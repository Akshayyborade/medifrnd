package com.servlet;

import com.dao.HospitalDao;
import com.db.HibernateConfig;
import com.entity.Hospitals;
import org.hibernate.SessionFactory;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;


public class HospitalServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private HospitalDao hospitalDao;

    @Override
    public void init() throws ServletException {
        super.init();
        // Initialize HospitalDao with the Hibernate SessionFactory
        SessionFactory sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
        hospitalDao = new HospitalDao(HibernateConfig.getSessionFactory());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the search query from the request parameter
        String searchQuery = request.getParameter("searchQuery");

        // Perform a database query to fetch hospitals based on the search query
        List<Hospitals> hospitals = hospitalDao.performSearch(searchQuery);

        // Set the search results as an attribute to be used in the JSP
        request.setAttribute("hospitals", hospitals);

        // Forward to the search.jsp to display the filtered results
        RequestDispatcher dispatcher = request.getRequestDispatcher("/search.jsp");
        dispatcher.forward(request, response);
    }
}
