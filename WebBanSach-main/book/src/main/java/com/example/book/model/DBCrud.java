package com.example.book.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




public class DBCrud {

    PreparedStatement ps = null;
    ResultSet rs = null;
    Connection conn = null;


    //dang nhap
    public Account login(String user, String pass) {
        String sql = "SELECT * FROM account WHERE username = ? AND password = ?";

        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Account(rs.getInt(1),
                 rs.getString(2),
                  rs.getString(3),
                   rs.getInt(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    //checkAccount: tra cuu username xem da co trong db chua
    public Account checkAccountExit(String user) {
        String sql = "SELECT * FROM account WHERE username = ?";

        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Account(rs.getInt(1),
                 rs.getString(2),
                  rs.getString(3),
                   rs.getInt(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    

    //Registe
    public void register(String user, String pass) {
        String query = "insert into account values (0,?,?,0)";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
            
        } catch (Exception e) {
            
        }
    }



    //tra ve list sach
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from book";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Product(rs.getString(1),
                 rs.getString(2),
                  rs.getString(3),
                     rs.getDouble(4),
                      rs.getString(5),
                       rs.getString(6)));
            }


        } catch (Exception e) {
            // TODO: handle exception
        }


        return list;
    }

    //tra ve list loai sach
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from loaisach";
        try {   
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Category(rs.getString(1),
                 rs.getString(2)));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }


        return list;
    }
    
    //tra ve list sach theo ID loai (by category)
    public List<Product> getAllProductByCID(String idLoai) {
        List<Product> list = new ArrayList<>();
        String query = "select * from book where idLoai = ? ";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idLoai);
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Product(rs.getString(1),
                 rs.getString(2),
                  rs.getString(3),
                     rs.getDouble(4),
                      rs.getString(5),
                       rs.getString(6)));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }


        return list;
    }

    //tra ve sach theo ID sach 
    public Product getAllProductByID(String idSach) {
        
        String query = "select * from book where idSach = ? ";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, idSach);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Product(rs.getString(1),
                 rs.getString(2),
                  rs.getString(3),
                     rs.getDouble(4),
                      rs.getString(5),
                       rs.getString(6));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }




    //lay thong tin sach va win ra list
    public static List<Product> getAllProduct(Connection conn){
        List<Product> productList = null;
        String sql = "SELECT * FROM book";
        PreparedStatement ps = null;
        ResultSet rs = null;
        productList = new ArrayList<>();

        //code
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            //chuyen ResultSet sang List<Product>
            while(rs.next()){
                String idSach = rs.getString("idSach");
                String idLoai = rs.getString("idLoai");
                String tenSach = rs.getString("tenSach");
                Double giaSach = rs.getDouble("giaSach");
                String moTa = rs.getString("moTa");
                String image = rs.getString("image");


                Product product = new Product(idSach, idLoai, tenSach, giaSach, moTa, image);
                productList.add(product);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return productList;


    }


    //lay thong tin user va in ra list
    public static List<Account> getAllAccount(Connection conn){
        List<Account> accountList = null;
        String sql = "SELECT * FROM account";
        PreparedStatement ps = null;
        ResultSet rs = null;
        accountList = new ArrayList<>();

        //code
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            //chuyen ResultSet sang List<Account>
            while(rs.next()){
                int id = rs.getInt("id");
                String user = rs.getString("username");
                String pass = rs.getString("password");
                int isAdmin = rs.getInt("isAdmin");
                


                Account account = new Account(id, user, pass, isAdmin);
                
                accountList.add(account);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return accountList;


    }


    //them sach moi vao db
    public  void addBook(String idSach, String idLoai, String tenSach, String giaSach, String moTa, String image){

        //cau lenh sql - insert vao csdl
        String sql = "INSERT INTO book (idSach, idLoai, tenSach, giaSach, moTa, image) VALUES (?, ?, ?, ?, ?, ?);" ;
        

        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1, idSach);
            ps.setString(2, idLoai);
            ps.setString(3, tenSach);
            ps.setString(4, giaSach);
            ps.setString(5, moTa);
            ps.setString(6, image);

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        

    }

    //delete book
    public void deleteProduct(String pid) {
        String query = "delete from book where idSach = ?";
            try {
                
                conn = MySQLConnector.getMySQLConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1, pid);
                ps.executeUpdate();
            } catch (Exception e) {
                // TODO: handle exception
            }
    }


    //update book
    public void editBook(String idSach, String idLoai, String tenSach, String giaSach, String moTa, String image) {
        String sql = "update book set  idLoai = ?, tenSach = ?, giaSach = ?, moTa = ?, image = ? where idSach = ?";
    
        try {
            conn = MySQLConnector.getMySQLConnection(); // Gọi phương thức tĩnh từ tên lớp
            ps = conn.prepareStatement(sql);
            
            
            ps.setString(1, idLoai);
            ps.setString(2, tenSach);
            ps.setString(3, giaSach);
            ps.setString(4, moTa);
            ps.setString(5, image);
            ps.setString(6, idSach);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    



    //them account moi vao db
    public  void addUser( String username, String password, String isAdmin){

        //cau lenh sql - insert vao csdl
        String sql = "INSERT INTO account (username, password, isAdmin) VALUES (?, ?, ?);" ;
        

        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, isAdmin);
            

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        

    }

    //delete user
    public void deleteUser(String did) {
        String query = "delete from account where id = ?";
            try {
                
                conn = MySQLConnector.getMySQLConnection();
                ps = conn.prepareStatement(query);
                ps.setString(1, did);
                ps.executeUpdate();
            } catch (Exception e) {
                // TODO: handle exception
            }
    }


    //tim user theo ID user
    public Account getfindUserByID(String id) {
        
        String query = "select * from account where id = ? ";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()) {
                return new Account(rs.getInt(1),
                 rs.getString(2),
                  rs.getString(3),
                   rs.getInt(4));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }




    


    //update account
    public void editUser(String id, String username, String password, String isAdmin) {
        String sql = "UPDATE account SET username = ?, password = ?, isAdmin = ? WHERE id = ?";
    
        try {
            conn = MySQLConnector.getMySQLConnection(); // Gọi phương thức tĩnh từ tên lớp
            ps = conn.prepareStatement(sql);
            
            
            
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, isAdmin);
            ps.setString(4, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



    //tim sach theo name
    public List<Product> getBookByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = " select * from book where tenSach like ? ";
        try {
            new MySQLConnector();
            conn = MySQLConnector.getMySQLConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while(rs.next()) {
                list.add(new Product(rs.getString(1),
                 rs.getString(2),
                  rs.getString(3),
                     rs.getDouble(4),
                      rs.getString(5),
                       rs.getString(6)));
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
        return list;
    }
}
   

































    /*public static void addProduct(Connection conn, Product product){

        //cau lenh sql - insert vao csdl
        String sql = "insert into product (code, name, price) values(?, ?, ?)";
        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getCode());
            ps.setString(2, product.getName());
            ps.setDouble(3, product.getPrice());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        

    }

    public static Product findProductByCode(Connection conn, String code){
        Product product = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String sql = "select * from product where code = ?";

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, code);
            rs = ps.executeQuery();

            while(rs.next()){
                String name = rs.getString("name");
                double price = rs.getDouble("price");

                product = new Product(code, name, price);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }


        return product;
    }

    public static void updateProduct(Connection conn, Product product){

        String sql = " update product set name = ?, price = ? where code = ?";

        PreparedStatement ps = null;

        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, product.getName());
            ps.setDouble(2, product.getPrice());
            ps.setString(3, product.getCode());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        

    }

    


*/


