package com.tedu.mle.dao;

import com.tedu.mle.BaseTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class UserDAOTest extends BaseTest {
    @Autowired
    UserDAO userDAO;

    @Test
    public void selectByPrimaryKey() {
        System.out.println(userDAO.selectByPrimaryKey(1L));
    }
}