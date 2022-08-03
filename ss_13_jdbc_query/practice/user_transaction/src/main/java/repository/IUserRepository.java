package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    public List<User> selectAllUser();

    public User selectUser(int id);

    public User getById(int id);

    public boolean deleteUser(int id);

    public boolean updateUser(User user);

//    public void insertUser(User user);

    public void insertUserStore(User user);

    boolean insertUser1(User user);
    public  void  addUserTransaction(User user,int[] permision);
}
