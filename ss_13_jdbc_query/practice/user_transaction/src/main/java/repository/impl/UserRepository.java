package repository.impl;

import connection.DBConnect;
import model.User;
import repository.IUserRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private static final String SELECT_ALL_USER = " select * from users ";
    private static final String INSERT_INTO_USER = " insert into users(name,email,country) values (?,?,?) ";
    private static final String INSERT_INTO_PERMISION = " insert into permision (`name`) values(?) ";

    @Override
    public List<User> selectAllUser() {
        Connection connection = DBConnect.getConnectDB();
        List<User> userList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("user_id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                User user = new User(id, name, email, country);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return userList;
    }

    @Override
    public User selectUser(int id) {
        return null;
    }

    @Override
    public User getById(int id) {
        User user = null;
        String query = "{CALL get_user_by_id(?)}";
        Connection connection = DBConnect.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setInt(1, id);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return user;
    }


    @Override
    public boolean deleteUser(int id) {
        return false;
    }

    @Override
    public boolean updateUser(User user) {
        return false;
    }

//    @Override
//    public void insertUser(User user) {
//        Connection connection = DBConnect.getConnectDB();
//        try {
//            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_USER);
//            preparedStatement.setString(1, user.getName());
//            preparedStatement.setString(2, user.getEmail());
//            preparedStatement.setString(3, user.getCountry());
//            preparedStatement.executeUpdate();
//        } catch (SQLException e) {
//            e.printStackTrace();
//        } finally {
//            try {
//                connection.close();
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//        }
//    }

    @Override
    public boolean insertUser1(User user) {
        Connection connection = DBConnect.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_USER);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            int check = preparedStatement.executeUpdate();
            return (check == 1);

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    @Override
    public void addUserTransaction(User user, int[] permision) {
        Connection connection = DBConnect.getConnectDB();
        String sqlPivot = "INSERT INTO user_permision(permision_id) "

                + "VALUES(?)";

        try {
            connection.setAutoCommit(false);
            PreparedStatement preparedStatement = connection.prepareStatement(sqlPivot, Statement.RETURN_GENERATED_KEYS);

            preparedStatement.executeUpdate();
            PreparedStatement preparedStatement1 = connection.prepareStatement(INSERT_INTO_USER,Statement.RETURN_GENERATED_KEYS);
            preparedStatement1.setString(1, user.getName());
            preparedStatement1.setString(2, user.getEmail());
            preparedStatement1.setString(3, user.getCountry());
            preparedStatement1.executeUpdate();
            connection.commit();
        } catch (SQLException e) {
            try {
                connection.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        }

    }

    @Override
    public void insertUserStore(User user) {
        String query = "{CALL insert_user( ?, ?, ?)}";
        Connection connection = DBConnect.getConnectDB();
        try {
            CallableStatement callableStatement = connection.prepareCall(query);
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getCountry());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }
}
