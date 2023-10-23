package Tank;

/**
 * @Author 申宇强
 * @Date 2023/5/26 13:30
 */
import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.*;

public class TankGame extends JFrame {

    private static final int GAME_WIDTH = 800;  // 游戏窗口宽度
    private static final int GAME_HEIGHT = 600;  // 游戏窗口高度

    private Tank myTank;  // 玩家坦克
    private List<Tank> enemyTanks;  // 敌方坦克列表
    private List<Bullet> bullets;  // 子弹列表
    private List<Obstacle> obstacles;  // 障碍物列表

    private int score;  // 得分

    public TankGame() {
        setTitle("Tank Game");
        setSize(GAME_WIDTH, GAME_HEIGHT);
        setResizable(false);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setVisible(true);
        setBackground(Color.BLACK);

        // 初始化玩家坦克
        myTank = new Tank(100, 100, Direction.UP, this);
        // 初始化敌方坦克
        enemyTanks = new ArrayList<>();
        enemyTanks.add(new Tank(200, 200, Direction.DOWN, this));
        enemyTanks.add(new Tank(300, 300, Direction.LEFT, this));
        // 初始化子弹列表
        bullets = new ArrayList<>();
        // 初始化障碍物列表
        obstacles = new ArrayList<>();
        obstacles.add(new Obstacle(400, 400, 50, 50));

        // 监听键盘事件
        addKeyListener(new KeyAdapter() {
            public void keyPressed(KeyEvent e) {
                myTank.keyPressed(e);
            }

            public void keyReleased(KeyEvent e) {
                myTank.keyReleased(e);
            }
        });

        // 开始游戏主循环
        new Thread(new GameLoop()).start();
    }

    public void paint(Graphics g) {
        super.paint(g);
        // 绘制玩家坦克和敌方坦克
        myTank.draw(g);
        for (Tank enemyTank : enemyTanks) {
            enemyTank.draw(g);
        }
        // 绘制子弹
        for (Bullet bullet : bullets) {
            bullet.draw(g);
        }
        // 绘制障碍物
        for (Obstacle obstacle : obstacles) {
            obstacle.draw(g);
        }
        // 绘制得分
        g.setColor(Color.WHITE);
        g.setFont(new Font("Arial", Font.BOLD, 16));
        g.drawString("Score: " + score, 10, 20);
    }

    public static void main(String[] args) {
        new TankGame();
    }

    class GameLoop implements Runnable {
        public void run() {
            while (true) {
                // 更新玩家坦克
                myTank.update();
                // 更新敌方坦克
                for (Tank enemyTank : enemyTanks) {
                    enemyTank.update();
                }
                // 更新子弹
                for (int i = 0; i < bullets.size(); i++) {
                    Bullet bullet = bullets.get(i);
                    bullet.update();
                    // 检测子弹是否击中敌方坦克
                    for (int j = 0; j < enemyTanks.size(); j++) {
                        Tank enemyTank = enemyTanks.get(j);
                        if (bullet.collidesWith(enemyTank)) {
                            enemyTank.hit();
                            bullets.remove(i);
                            score += 10;
                            break;
                        }
                    }
                    // 检测子弹是否击中障碍物
                    for (int j = 0; j < obstacles.size(); j++) {
                        Obstacle obstacle = obstacles.get(j);
                        if (bullet.collidesWith(obstacle)) {
                            bullets.remove(i);
                            break;
                        }
                    }
                }
                // 检测玩家坦克是否与敌方坦克碰撞
                for (int i = 0; i < enemyTanks.size(); i++) {
                    Tank enemyTank = enemyTanks.get(i);
                    if (myTank.collidesWith(enemyTank)) {
                        myTank.hit();
                        enemyTanks.remove(i);
                        break;
                    }
                }
                // 重绘游戏窗口
                repaint();

                try {
                    Thread.sleep(50);  // 控制游戏刷新的速度
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    class Tank {
        private int x;  // 坦克的x坐标
        private int y;  // 坦克的y坐标
        private Direction direction;  // 坦克的方向
        private boolean upPressed;  // 上键是否被按下
        private boolean downPressed;  // 下键是否被按下
        private boolean leftPressed;  // 左键是否被按下
        private boolean rightPressed;  // 右键是否被按下
        private TankGame tankGame;  // 所属的游戏实例
        private int health;  // 生命值

        private static final int SPEED = 5;  // 坦克的移动速度
        private static final int MAX_HEALTH = 100;  // 坦克的最大生命值

        public Tank(int x, int y, Direction direction, TankGame tankGame) {
            this.x = x;
            this.y = y;
            this.direction = direction;
            this.tankGame = tankGame;
            this.health = MAX_HEALTH;
        }

        public void keyPressed(KeyEvent e) {
            int key = e.getKeyCode();
            if (key == KeyEvent.VK_UP) {
                upPressed = true;
            } else if (key == KeyEvent.VK_DOWN) {
                downPressed = true;
            } else if (key == KeyEvent.VK_LEFT) {
                leftPressed = true;
            } else if (key == KeyEvent.VK_RIGHT) {
                rightPressed = true;
            } else if (key == KeyEvent.VK_SPACE) {
                fire();
            }
        }

        public void keyReleased(KeyEvent e) {
            int key = e.getKeyCode();
            if (key == KeyEvent.VK_UP) {
                upPressed = false;
            } else if (key == KeyEvent.VK_DOWN) {
                downPressed = false;
            } else if (key == KeyEvent.VK_LEFT) {
                leftPressed = false;
            } else if (key == KeyEvent.VK_RIGHT) {
                rightPressed = false;
            }
        }

        public void update() {
            if (upPressed) {
                moveUp();
            } else if (downPressed) {
                moveDown();
            } else if (leftPressed) {
                moveLeft();
            } else if (rightPressed) {
                moveRight();
            }
        }

        public void moveUp() {
            y -= SPEED;
            if (y < 0) {
                y = 0;
            }
        }

        public void moveDown() {
            y += SPEED;
            if (y > tankGame.getHeight() - 30) {
                y = tankGame.getHeight() - 30;
            }
        }

        public void moveLeft() {
            x -= SPEED;
            if (x < 0) {
                x = 0;
            }
        }

        public void moveRight() {
            x += SPEED;
            if (x > tankGame.getWidth() - 30) {
                x = tankGame.getWidth() - 30;
            }
        }

        public void fire() {
            int bulletX = x + 10;
            int bulletY = y + 10;
            bullets.add(new Bullet(bulletX, bulletY, direction, tankGame));
        }

        public void hit() {
            health -= 20;
            if (health <= 0) {
                // 游戏结束逻辑
                JOptionPane.showMessageDialog(null, "Game Over");
                System.exit(0);
            }
        }

        public void draw(Graphics g) {
            // 根据坦克的方向绘制坦克
            g.setColor(Color.RED);
            g.fillOval(x, y, 30, 30);
        }

        public Rectangle getRectangle() {
            return new Rectangle(x, y, 30, 30);
        }

        public boolean collidesWith(Tank otherTank) {
            return getRectangle().intersects(otherTank.getRectangle());
        }
    }

    class Bullet {
        private int x;  // 子弹的x坐标
        private int y;  // 子弹的y坐标
        private Direction direction;  // 子弹的方向
        private TankGame tankGame;  // 所属的游戏实例

        private static final int SPEED = 8;  // 子弹的移动速度

        public Bullet(int x, int y, Direction direction, TankGame tankGame) {
            this.x = x;
            this.y = y;
            this.direction = direction;
            this.tankGame = tankGame;
        }

        public void update() {
            switch (direction) {
                case UP:
                    y -= SPEED;
                    break;
                case DOWN:
                    y += SPEED;
                    break;
                case LEFT:
                    x -= SPEED;
                    break;
                case RIGHT:
                    x += SPEED;
                    break;
            }

            // 判断子弹是否超出边界
            if (x < 0 || x > tankGame.getWidth() || y < 0 || y > tankGame.getHeight()) {
                tankGame.bullets.remove(this);
            }
        }

        public void draw(Graphics g) {
            // 绘制子弹
            g.setColor(Color.YELLOW);
            g.fillOval(x, y, 10, 10);
        }

        public Rectangle getRectangle() {
            return new Rectangle(x, y, 10, 10);
        }

        public boolean collidesWith(Tank tank) {
            return getRectangle().intersects(tank.getRectangle());
        }

        public boolean collidesWith(Obstacle obstacle) {
            return false;
        }

    }

    class Obstacle {
        private int x;  // 障碍物的x坐标
        private int y;  // 障碍物的y坐标
        private int width;  // 障碍物的宽度
        private int height;  // 障碍物的高度

        public Obstacle(int x, int y, int width, int height) {
            this.x = x;
            this.y = y;
            this.width = width;
            this.height = height;
        }

        public void draw(Graphics g) {
            // 绘制障碍物
            g.setColor(Color.GRAY);
            g.fillRect(x, y, width, height);
        }

        public Rectangle getRectangle() {
            return new Rectangle(x, y, width, height);
        }
    }

    enum Direction {
        UP,
        DOWN,
        LEFT,
        RIGHT
    }
}
