package com.priyank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.priyank.dao.ProductDAO;

@SuppressWarnings("serial")
@WebServlet("/update-product")
public class UpdateProductServlet extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
        ProductDAO dao = new ProductDAO();
        dao.updateProduct(request);
        
        response.sendRedirect("home-page.jsp");
    }
}
