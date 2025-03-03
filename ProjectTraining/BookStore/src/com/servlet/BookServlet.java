package com.servlet;

import com.pojo.Book;
import com.service.BookService;
import com.service.BookServiceImpl;
import com.util.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(name = "BookServlet", urlPatterns = "/BookServlet")
public class BookServlet extends HttpServlet {

    BookService bookService = new BookServiceImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String m = request.getParameter("m");
        if ("add".equals(m)) {
            add(request, response);
        } else if ("update".equals(m)) {
            update(request, response);
        } else if ("delete".equals(m)) {
            delete(request, response);
        } else if ("selectAll".equals(m)) {
            selectAll(request, response);
        } else if ("bookInfo".equals(m)) {
            bookInfo(request, response);
        } else if ("blurryname".equals(m)) {
            bookBlurryName(request, response);
        }
    }

    private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookName = request.getParameter("book_name");
        String isbn = request.getParameter("isbn");
        String category = request.getParameter("category");
        Book book = new Book(0, bookName, isbn, category);
        System.out.println(book.toString());
        try {
            //抓获异常
            bookService.add(book);
            selectAll(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookId = request.getParameter("book_id");
        String bookName = request.getParameter("book_name");
        String isbn = request.getParameter("isbn");
        String category = request.getParameter("category");
        Book book = new Book(Integer.parseInt(bookId), bookName, isbn, category);
        try {
            bookService.update(book);
            selectAll(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookId = request.getParameter("book_id");
        Book book = new Book();
        book.setBook_id(Integer.parseInt(bookId));
        try {
            bookService.delete(book);
            selectAll(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    PageBean pb = new PageBean();
    int pageUp = pb.getPage();
    int pageDown = pb.getPage();

    private void selectAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if ("pageUp".equals(request.getParameter("pageUp"))) {
            System.out.println(request.getParameter("pageUp"));
            pb.setPage(pb.getPage() - 1);
//            request.setAttribute("pageUp",pb.getPage());
            if (pb.getPage() < 1) {
                pb.setPage(1);
            }
            try {
                List<Book> booklist = bookService.selectAll(pb.getPage(), 5);
                request.setAttribute("bookList", booklist);
                request.getRequestDispatcher("/views/booklist.jsp").forward(request, response);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        } else if ("pageDown".equals(request.getParameter("pageDown"))) {
            System.out.println(request.getParameter("pageDown"));
            pb.setPage(pb.getPage() + 1);
//            request.setAttribute("pageDown",pb.getPage());
            try {
                List<Book> booklist = bookService.selectAll(pb.getPage(), 5);
                request.setAttribute("bookList", booklist);
                if ("".equals(booklist)) {
                    request.setAttribute("null_err", "<h3>查询内容为空请返回上一页</h3>");
                }
                request.getRequestDispatcher("/views/booklist.jsp").forward(request, response);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        } else {
//            request.setAttribute("pageUp",1);
//            request.setAttribute("pageDown",2);
            pb.setPage(1);
            try {
                List<Book> booklist = bookService.selectAll(pb.getPage(), 5);
                request.setAttribute("bookList", booklist);
                request.getRequestDispatcher("/views/booklist.jsp").forward(request, response);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

    }

    private void bookInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String bookId = request.getParameter("book_id");
        Book book = new Book();
        book.setBook_id(Integer.parseInt(bookId));
        try {
            Book b = bookService.bookInfo(book);
            request.setAttribute("b", b);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        request.getRequestDispatcher("/views/updatebook.jsp").forward(request, response);
    }

    private void bookBlurryName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String keyName = request.getParameter("blurryname");
        Book book = new Book();
        book.setBook_name(keyName);
        try {
            List<Book> bookblurryList = bookService.blurryName(book);
            request.setAttribute("bookblurryList", bookblurryList);
            request.getRequestDispatcher("/views/blurrynamebook.jsp").forward(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}
