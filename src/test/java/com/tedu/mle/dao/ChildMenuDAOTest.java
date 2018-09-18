package com.tedu.mle.dao;

import com.tedu.mle.BaseTest;
import com.tedu.mle.entity.ChildMenu;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class ChildMenuDAOTest extends BaseTest {
    @Autowired
    ChildMenuDAO childMenuDAO;

    @Test
    public void selectWithDishList() {
        ChildMenu childMenu = new ChildMenu();
        childMenu.setFatherMenuIdF(1L);
        List<ChildMenu> childMenus = childMenuDAO.selectWithDishList(childMenu);
        System.out.println(childMenus);
    }
}