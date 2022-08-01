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
    public Map<String, String> insertUser(User user) {
        Map<String, String> errMap = new HashMap<>();
        this.userRepository.insertUser(user);
        return errMap;
    }

    @Override
    public User selectUser(int id) {
        return this.userRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return this.userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) {
        return this.userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) {
        return this.userRepository.updateUser(user);
    }

    @Override
    public List<User> searchByName(String name) {
        return this.userRepository.searchByName(name);
    }
}
