package service.impl;

import model.User;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserService implements IUserService {
    private IUserRepository userRepository = new UserRepository();

    @Override
    public List<User> selectAllUser() {
        return this.userRepository.selectAllUser();
    }

    @Override
    public User selectUser(int id) {
        return this.getByIdUser(id);
    }

    @Override
    public User getByIdUser(int id) {
        return this.userRepository.getById(id);
    }

//    @Override
//    public Map<String, String> insertUser(User user) {
//        Map<String, String> users = new HashMap<>();
//        this.userRepository.insertUser(user);
//        return users;
//    }

    @Override
    public boolean insertUser1(User user) {

        return userRepository.insertUser1(user);

    }

    @Override
    public boolean deleteUser(int id) {
        return false;
    }

    @Override
    public boolean updateUser(User use) {
        return false;
    }

    @Override
    public Map<String, String> insertUserStore(User user) {
       Map<String, String> users = new HashMap<>();
     this.userRepository.insertUserStore(user);
      return users;
   }

    @Override
    public void addUserTransaction(User user, int[] permision) {
        userRepository.addUserTransaction(user,permision);

    }


}
