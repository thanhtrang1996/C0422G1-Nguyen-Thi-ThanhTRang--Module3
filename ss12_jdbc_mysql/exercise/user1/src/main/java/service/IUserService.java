package service;

import model.User;

import java.util.List;
import java.util.Map;

public interface IUserService {
    public List<User> selectAllUser();
    public Map<String, String> insertUser(User user);
    public User selectUser(int id);
    public boolean deleteUser(int id);
    public boolean updateUser(User user);
    List<User> searchByCountry(String country);
    public List<User> sortByName();
}
