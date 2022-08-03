package service;

import model.User;

import java.util.List;
import java.util.Map;

public interface IUserService {
    public List<User> selectAllUser();
    public User selectUser(int id);
    public User getByIdUser(int id);
//    public Map<String,String> insertUser(User user);
    public boolean insertUser1(User user);
    public boolean deleteUser(int id);
    public boolean updateUser(User use);
    public Map<String, String> insertUserStore(User user);
    public  void  addUserTransaction(User user,int[] permision);
}
