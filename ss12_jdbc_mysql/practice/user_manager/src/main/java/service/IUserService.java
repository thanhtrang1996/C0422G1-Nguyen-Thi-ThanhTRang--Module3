package service;

import model.User;

import java.util.List;
import java.util.Map;

public interface IUserService {
    public Map<String, String> insertUser(User user);
    public User selectUser(int id);
    public List<User> selectAllUsers();
    public boolean deleteUser(int id);
    public boolean updateUser(User user);
    List<User> searchByName(String name);
}
