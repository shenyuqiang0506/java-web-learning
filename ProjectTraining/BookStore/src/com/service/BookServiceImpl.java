package com.service;

import com.dao.BookDao;
import com.pojo.Book;
import lombok.Data;
import com.dao.BookDaoImpl;

import java.sql.SQLException;
import java.util.List;


@Data
public class BookServiceImpl implements BookService {
    BookDao bookDao = new BookDaoImpl();

    @Override
    public List<Book> selectAll() throws SQLException {
        return bookDao.selectAll();
    }

    @Override
    public void add(Book book) throws SQLException {
        bookDao.add(book);
    }

    @Override
    public void update(Book book) throws SQLException {
        bookDao.update(book);
    }

    @Override
    public void delete(Book book) throws SQLException {
        bookDao.delete(book);
    }

    @Override
    public List<Book> blurryName(Book book) throws SQLException {
        return bookDao.blurryName(book);
    }

    @Override
    public Book bookInfo(Book book) throws SQLException {
        return bookDao.bookInfo(book);
    }

    @Override
    public List<Book> selectAll(int currentPage, int pageSize) throws SQLException {
        return bookDao.selectAll(currentPage, pageSize);
    }
}
