package service.impl;

import model.User;
import repository.IUserRepository;
import repository.impl.UserRepository;
import service.IUserService;

import java.util.List;
import java.util.Map;

public class UserService implements IUserService {
    private IUserRepository userRepository = new UserRepository();

    @Override
    public List<User> selectAllUser() {
        return userRepository.selectAllUser();
    }

    @Override
    public Map<String, String> insertUser(User user) {
        userRepository.insertUser(user);
        return null;
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public boolean deleteUser(int id) {
        return userRepository.delete(id);
    }

    @Override
    public boolean updateUser(User user) {
        return userRepository.update(user);
    }

}
