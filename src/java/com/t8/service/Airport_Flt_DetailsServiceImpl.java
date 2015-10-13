/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.service;

import com.t8.dao.Airport_Flt_DetailsDAO;
import com.t8.model.Airport_Flight_Details;
import java.util.List;

/**
 *
 * @author Earth
 */
public class Airport_Flt_DetailsServiceImpl implements Airport_Flt_DetailsService{
    
    private Airport_Flt_DetailsDAO flight_detailsDAO;

    @Override
    public void addAirport_Flt_Details(Airport_Flight_Details flight_details) {
        flight_detailsDAO.addAirport_Flt_Details(flight_details);
    }

    @Override
    public void updateAirport_Flt_Details(Airport_Flight_Details flight_details) {
        flight_detailsDAO.updateAirport_Flt_Details(flight_details);
    }

    @Override
    public Airport_Flight_Details getAirport_Flt_Details(String ref_key) {
      return  flight_detailsDAO.getAirport_Flt_Details(ref_key);
    }

    @Override
    public void deleteAirport_Flt_Details(String ref_key) {
        flight_detailsDAO.deleteAirport_Flt_Details(ref_key);
    }

    @Override
    public List<Airport_Flight_Details> getAirport_Flt_Details() {
        return flight_detailsDAO.getAirport_Flt_Details();
    }
    
}
