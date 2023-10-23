package MyServlet;

/**
 * @Author 申宇强
 * @Date 2023/4/25 14:04
 */
public class EightQueens {

    static final int BOARD_SIZE = 8;
    static int[] queenPositions = new int[BOARD_SIZE];

    public static void main(String[] args) {
        solve(0);
    }

    static boolean isSafe(int row, int column) {
        for (int i = 0; i < row; i++) {
            if (queenPositions[i] == column
                    || queenPositions[i] - i == column - row
                    || queenPositions[i] + i == column + row) {
                return false;
            }
        }
        return true;
    }

    static void printQueens() {
        for (int i = 0; i < BOARD_SIZE; i++) {
            for (int j = 0; j < BOARD_SIZE; j++) {
                if (queenPositions[i] == j) {
                    System.out.print("Q ");
                } else {
                    System.out.print("- ");
                }
            }
            System.out.println();
        }
        System.out.println();
    }

    static void solve(int row) {
        if (row == BOARD_SIZE) {
            printQueens();
        } else {
            for (int i = 0; i < BOARD_SIZE; i++) {
                if (isSafe(row, i)) {
                    queenPositions[row] = i;
                    solve(row + 1);
                }
            }
        }
    }
}

