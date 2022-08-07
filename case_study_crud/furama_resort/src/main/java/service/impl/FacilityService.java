package service.impl;

import model.Facility;
import repository.IFacilityRepository;
import repository.impl.FacilityRepository;
import service.IFacilityService;

import java.util.List;

public class FacilityService implements IFacilityService {
    private IFacilityRepository facilityRepository = new FacilityRepository();

    @Override
    public List<Facility> selectAllFacility() {
        return facilityRepository.selectAllFacility();
    }

    @Override
    public Facility selectFacility(int id) {
        return facilityRepository.selectFacility(id);
    }

    @Override
    public boolean deleteFacility(int id) {
        return facilityRepository.deleteFacility(id);
    }

    @Override
    public List<Facility> searchFacility(String name) {
        return facilityRepository.searchFacilityByName(name);
    }

    @Override
    public void insertRoom(Facility facility) {
        this.facilityRepository.insertRoom(facility);
    }

    @Override
    public void insertHouse(Facility facility) {
        this.facilityRepository.insertHouse(facility);
    }

    @Override
    public boolean updateRoom(Facility facility) {
        return facilityRepository.updateRoom(facility);
    }

    @Override
    public boolean updateHouse(Facility facility) {
        return facilityRepository.updateHouse(facility);
    }

    @Override
    public boolean updateVilla(Facility facility) {
        return facilityRepository.updateVilla(facility);
    }

    @Override
    public void insertVilla(Facility facility) {
        this.facilityRepository.insertVilla(facility);
    }
}
