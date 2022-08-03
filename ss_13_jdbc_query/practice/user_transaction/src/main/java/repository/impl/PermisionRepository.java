package repository.impl;

import connection.DBConnect;
import model.Permision;
import repository.IPermisionRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class PermisionRepository implements IPermisionRepository {
    private static final String INSERT_INTO_PERMISION = " insert into permision (`name`) values(?) ";
    @Override
    public List<Permision> fillAllPermision() {
        Connection connection = DBConnect.getConnectDB();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_PERMISION);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
