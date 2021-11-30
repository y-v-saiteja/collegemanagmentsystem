package com.coforge.training.collegemanagmentsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.coforge.training.collegemanagmentsystem.collegestudent;

public class collegestudentDAO {
	
	private static int rollno;
	private static int marks;
    private static String name;
	private static String course;
  //DAO-- Data Access Object layer is used for communication with db
    public static Connection getConnection()
    {
        Connection con=null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Training","root","teja1532");
        }catch(Exception e){System.out.println(e);}
        return con;
    }
    
    public static List<collegestudent> getAllRecords(){
        List<collegestudent> list=new ArrayList<collegestudent>();

        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from collegestudent");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                collegestudent u=new collegestudent(rollno, marks, name, course);
                u.setRollno(rs.getInt("rollno"));
                u.setName(rs.getString("name"));
                u.setMarks(rs.getInt("marks"));
                u.setCourse(rs.getString("course"));
                
                list.add(u);
            }
        }catch(Exception e){System.out.println(e);}
        return( list);
        }
    
        
    public static int save(collegestudent u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
    "insert into user(name,marks,course) values(?,?,?)");
            ps.setString(1,u.getName());
            ps.setInt(2,u.getMarks());
            ps.setString(3,u.getCourse());
            
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    public static collegestudent getRecordById(int rollno){
        collegestudent u=null;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("select * from collegestudent where rollno=?");
            ps.setInt(1,rollno);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                u=new collegestudent(rollno, marks, name, course);
                u.setRollno(rs.getInt("rollno"));
                u.setName(rs.getString("name"));
                u.setCourse(rs.getString("course"));
                u.setMarks(rs.getInt("marks"));
                
            }
        }catch(Exception e){System.out.println(e);}
        return u;
    }
    public static int updateUser(collegestudent u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement(
            	    "insert into user(name,marks,course) values(?,?,?)");
            ps.setString(1,u.getName());
            ps.setString(2,u.getCourse());
            ps.setInt(3,u.getMarks());
            
            ps.setInt(6,u.getRollno());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}
        return status;
    }
    
    public static int deleteUser(collegestudent u){
        int status=0;
        try{
            Connection con=getConnection();
            PreparedStatement ps=con.prepareStatement("delete from user where rollno=?");
            ps.setInt(1,u.getRollno());
            status=ps.executeUpdate();
        }catch(Exception e){System.out.println(e);}

        return status;
    }
	


}
