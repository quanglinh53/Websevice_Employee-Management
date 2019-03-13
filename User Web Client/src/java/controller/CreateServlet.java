/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import client.EmployeeJerseyClient;
import entity.Employee;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.GenericType;

/**
 *
 * @author quanglinh
 */
public class CreateServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String salary = request.getParameter("salary");
        
        EmployeeJerseyClient client = new EmployeeJerseyClient();
        Employee e = new Employee(name, Integer.parseInt(salary));
        client.create_XML(e);
        
        GenericType<List<Employee>> gType = new GenericType<List<Employee>>(){};
        List<Employee> emps = client.findAll_XML(gType);
        request.setAttribute("ListEmployee", emps);
        request.getRequestDispatcher("usermanagement.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
