/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.dao;

import com.t8.model.Airport_Flight_Details;
import java.util.List;

/**
 *
 * @author Earth
 */
public interface Airport_Flt_DetailsDAO {
    
    public void addAirport_Flt_Details(Airport_Flight_Details flight_details);
	public void updateAirport_Flt_Details(Airport_Flight_Details flight_details);
	public Airport_Flight_Details getAirport_Flt_Details(String ref_key);
	public void deleteAirport_Flt_Details(String ref_key);
       	public List<Airport_Flight_Details> getAirport_Flt_Details();
    
}
