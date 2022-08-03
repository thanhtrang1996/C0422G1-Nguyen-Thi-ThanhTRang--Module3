package service.impl;

import model.Permision;
import repository.IPermisionRepository;
import repository.impl.PermisionRepository;
import service.IPermisionService;

import java.util.List;

public class PermisionService implements IPermisionService {
    private IPermisionRepository permisionRepository = new PermisionRepository();
    @Override
    public List<Permision> fillAllPermision() {
        return permisionRepository.fillAllPermision();
    }
}
