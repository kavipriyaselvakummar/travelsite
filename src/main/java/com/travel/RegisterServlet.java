package com.travel;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        // Get values from registration form
        String name = request.getParameter("name");

        String email = request.getParameter("email");

        String password = request.getParameter("password");


        // Send values to success.jsp
        request.setAttribute("name", name);

        request.setAttribute("email", email);

        request.setAttribute("password", password);


        // Forward to success page
        RequestDispatcher rd =
                request.getRequestDispatcher("success.jsp");

        rd.forward(request, response);
    }


    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }
}