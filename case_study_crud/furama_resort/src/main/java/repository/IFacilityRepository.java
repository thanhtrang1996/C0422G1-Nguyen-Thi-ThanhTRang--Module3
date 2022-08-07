package repository;

import model.Facility;

import java.util.List;

public interface IFacilityRepository {
    List<Facility> selectAllFacility();
   Facility selectFacility(int id);
    boolean deleteFacility(int id);
    List<Facility> searchFacilityByName();
    boolean updateRoom(Facility facility);
    boolean updateHouse(Facility facility);
    boolean updateVilla(Facility facility);
    void insertRoom(Facility facility);

    void insertHouse(Facility facility);

    void insertVilla(Facility facility);
}
