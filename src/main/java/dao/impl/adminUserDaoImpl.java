package dao.impl;

import dao.BaseDao;
import dao.adminUserDao;
import entity.admin;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class adminUserDaoImpl extends BaseDao implements adminUserDao {
    @Override
    public List<admin> select(admin a) {
        List<admin> list=new ArrayList<admin>();
        ResultSet rs=null;
        String sql="select * from admin WHERE uname=? and upwd=?";
        Object[] obj={a.getUname(),a.getUpwd()};

        return list;
    }

    public static void main(String[] args) {

    }
}
