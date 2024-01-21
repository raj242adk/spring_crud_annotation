package dao;

import model.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserDao {

    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }


    public int save(User p) {
        System.out.println("printing from dao"+p.getPhoneNumber());
        String sql = "INSERT INTO users ( name, email, password, address, phoneNumber) VALUES (?, ?, ?, ?, ?)";
        return template.update(sql, p.getName(), p.getEmail(), p.getPassword(), p.getAddress(), p.getPhoneNumber());
    }


    public List<User> viewUsers() {
        return template.query("select * from users", new RowMapper<User>() {
            @Override
            public User mapRow(ResultSet rs, int rowNum) throws SQLException {
               User e = new User();
               e.setName(rs.getString(1));
               e.setEmail(rs.getString(2));
               e.setPassword(rs.getString(3));
               e.setAddress(rs.getString(4));
               e.setPhoneNumber(rs.getString(5));

//                System.out.println(e);
               return e;
            }
        });

    }

    public int delete(int id){
        String sql="delete from users where id="+id+"";
        return template.update(sql);
    }

    public User getUserById(int id){
        String sql="select * from users where id=?";
        return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<User>(User.class));
    }
}
