package com.tedu.mle.dao;

import com.tedu.mle.BaseTest;
import com.tedu.mle.entity.FatherMenu;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

import static org.junit.Assert.*;

public class FatherMenuDAOTest extends BaseTest {
    @Autowired
    FatherMenuDAO fatherMenuDAO;

    @Test
    public void deleteByPrimaryKey() {
    }

    @Test
    public void insert() {
    }

    @Test
    public void selectByPrimaryKey() {
    }

    @Test
    public void selectSelective() {
        FatherMenu fatherMenu=new FatherMenu();
        fatherMenu.setShopIdF(1L);
        List<FatherMenu> fatherMenus = fatherMenuDAO.selectSelective(fatherMenu);
        System.out.println(fatherMenus);
    }

    @Test
    public void updateByPrimaryKeySelective() {
    }
}