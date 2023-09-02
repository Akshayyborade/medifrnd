package com.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.entity.Hospitals;
import java.util.List;

public class HospitalDao {
    private final SessionFactory sessionFactory;

    public HospitalDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Hospitals> performSearch(String searchQuery) {
        try (Session session = sessionFactory.openSession()) {
            String hql = "FROM Hospitals WHERE hospitalName LIKE :query OR city LIKE :query OR address LIKE :query";
            Query<Hospitals> query = session.createQuery(hql, Hospitals.class);
            query.setParameter("query", "%" + searchQuery + "%"); // Use % for partial matching
            return query.getResultList();
        }
    }
}
