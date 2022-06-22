package dao.impl;

import dao.BaseDao;
import dao.adminUserDao;
import entity.admin;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class adminUserDaoImpl extends BaseDao implements adminUserDao {
    @Override
    public List<admin> select(admin a) {
        List<admin> list=new ArrayList<admin>();
        ResultSet rs=null;
        String sql="select * from admin WHERE uname=? and upwd=?";
        try {

        Object[] obj={a.getUname(),a.getUpwd()};
        rs=executeQuery(sql,obj);
        while (rs.next()){
            a.setUname(rs.getString("uname"));
            a.setUpwd(rs.getString("upwd"));
            System.out.println(rs.getString("uname"));
        }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;

    }


    public  void  test(){
        ResultSet rs=null;
        String sql="select * from admin";
        rs=executeQuery(sql);
        try {
            while (rs.next()){
                System.out.println(rs.getString("uname"));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void main(String[] args) {
        adminUserDao m=new adminUserDaoImpl();
        adminUserDaoImpl a1=new adminUserDaoImpl();
//        admin a=new admin();
//        String name= a.setUname("admin");
//        String pwd=a.setUname("123456");
//        m.select(null);
            a1.test();
    }
}
