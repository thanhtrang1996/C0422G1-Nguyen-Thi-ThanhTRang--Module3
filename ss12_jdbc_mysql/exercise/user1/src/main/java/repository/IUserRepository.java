package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    public List<User> selectAllUser();
    public void insertUser(User user);
    public  User selectUser(int id);
    public boolean delete(int id);
    public  boolean update(User user);
    List<User> searchByCountry(String country);
    public List<User> sortByName();

}
