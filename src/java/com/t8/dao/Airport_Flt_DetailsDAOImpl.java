/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.t8.dao;

import com.t8.model.Airport_Flight_Details;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

/**
 *
 * @author Earth
 */
public class Airport_Flt_DetailsDAOImpl implements Airport_Flt_DetailsDAO{
    
    private SessionFactory sessionFactory;
    
    
    private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

    @Override
    public void addAirport_Flt_Details(Airport_Flight_Details flight_details) {
        getCurrentSession().save(flight_details);
    }

    @Override
    public void updateAirport_Flt_Details(Airport_Flight_Details flight_details) {
        Airport_Flight_Details flightToUpdate = getAirport_Flt_Details(flight_details.getReference_key());
		//operatorToUpdate.setName(operator.getName());
		//operatorToUpdate.setRating(operator.getRating());
		getCurrentSession().update(flightToUpdate);
    }

    @Override
    public Airport_Flight_Details getAirport_Flt_Details(String ref_key) {
       Airport_Flight_Details flight_details = (Airport_Flight_Details) getCurrentSession().get(Airport_Flight_Details.class, ref_key);
		return flight_details;
    }

    @Override
    public void deleteAirport_Flt_Details(String ref_key) {
       Airport_Flight_Details flight_details = getAirport_Flt_Details(ref_key);
		if (flight_details != null)
			getCurrentSession().delete(flight_details);
    }

    @Override
    public List<Airport_Flight_Details> getAirport_Flt_Details() {
         return getCurrentSession().createQuery("from airport_flt_details").list();
    }
    
}
