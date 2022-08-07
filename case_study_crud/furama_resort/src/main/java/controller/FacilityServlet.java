package controller;

import model.Facility;
import service.IFacilityService;
import service.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FacilityServlet", value = "/facility")
public class FacilityServlet extends HttpServlet {
    private IFacilityService facilityService = new FacilityService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateFacility(request, response);
                break;
            case "update":
                showUpdateFacility(request, response);
                break;
            case "delete":
                deleteFacility(request, response);
                break;
            default:
                listFacility(request, response);
                break;
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer id = Integer.parseInt(request.getParameter("id"));
        facilityService.deleteFacility(id);
        response.sendRedirect("/facility");


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createFacility(request, response);
                break;
            case "update":
                updateFacility(request, response);
                break;
        }
    }

    private void listFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Facility> facilityList = facilityService.selectAllFacility();
        request.setAttribute("facility", facilityList);
        request.getRequestDispatcher("facility/list.jsp").forward(request, response);
    }

    private void showUpdateFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Facility facility = facilityService.selectFacility(id);
        request.setAttribute("facility", facility);
        request.getRequestDispatcher("facility/update.jsp").forward(request, response);
    }

    private void showCreateFacility(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("facility/create.jsp").forward(request, response);
    }


    private void updateFacility(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String choiceFacility = request.getParameter("choiceFacility");
        String name = request.getParameter("name");
        Integer area = Integer.parseInt(request.getParameter("area"));
        Double cost = Double.parseDouble(request.getParameter("cost"));
        Integer maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        Integer rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        Integer facilityTypeId = Integer.parseInt(request.getParameter("facilityTypeId"));
        String standardRoom;
        String descriptionOtherConvenience;
        Integer numberOfFloors;
        Facility facility = null;
        switch (choiceFacility) {
            case "room":
                String facilityFree = request.getParameter("facilityFree");
                facility = new Facility(name, area, cost, maxPeople, rentTypeId, facilityTypeId, facilityFree);
                facilityService.updateRoom(facility);
                break;
            case "house":
                standardRoom = request.getParameter("standardRoom");
                descriptionOtherConvenience = request.getParameter("descriptionOtherConvenience");
                numberOfFloors = Integer.valueOf(request.getParameter("numberOfFloors"));
                facility = new Facility(name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom, descriptionOtherConvenience, numberOfFloors);
                facilityService.updateHouse(facility);
                break;
            case "villa":
                standardRoom = request.getParameter("standardRoom");
                descriptionOtherConvenience = request.getParameter("descriptionOtherConvenience");
                numberOfFloors = Integer.valueOf(request.getParameter("numberOfFloors"));
                Double poolArea = Double.valueOf(request.getParameter("poolArea"));
                facility = new Facility(name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom, descriptionOtherConvenience, numberOfFloors, poolArea);
                facilityService.updateVilla(facility);
                break;
        }
        response.sendRedirect("/facility");
    }


    private void createFacility(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String choiceFacility = request.getParameter("choiceFacility");
        String name = request.getParameter("name");
        Integer area = Integer.parseInt(request.getParameter("area"));
        Double cost = Double.parseDouble(request.getParameter("cost"));
        Integer maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        Integer rentTypeId = Integer.parseInt(request.getParameter("rentTypeId"));
        Integer facilityTypeId = Integer.parseInt(request.getParameter("facilityTypeId"));
        String standardRoom;
        String descriptionOtherConvenience;
        Integer numberOfFloors;
        Facility facility = null;
        switch (choiceFacility) {
            case "room":
                String facilityFree = request.getParameter("facilityFree");
                facility = new Facility(name, area, cost, maxPeople, rentTypeId, facilityTypeId, facilityFree);
                facilityService.insertRoom(facility);
                break;
            case "house":
                standardRoom = request.getParameter("standardRoom");
                descriptionOtherConvenience = request.getParameter("descriptionOtherConvenience");
                numberOfFloors = Integer.valueOf(request.getParameter("numberOfFloors"));
                facility = new Facility(name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom, descriptionOtherConvenience, numberOfFloors);
                facilityService.insertHouse(facility);
                break;
            case "villa":
                standardRoom = request.getParameter("standardRoom");
                descriptionOtherConvenience = request.getParameter("descriptionOtherConvenience");
                numberOfFloors = Integer.valueOf(request.getParameter("numberOfFloors"));
                Double poolArea = Double.valueOf(request.getParameter("poolArea"));
                facility = new Facility(name, area, cost, maxPeople, rentTypeId, facilityTypeId, standardRoom, descriptionOtherConvenience, numberOfFloors, poolArea);
                facilityService.insertVilla(facility);
                break;
        }
        response.sendRedirect("/facility");
    }
}
