package com.priyank.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import com.priyank.dao.ProductDAO;
import com.priyank.model.Product;

@WebServlet("/add-product")
public class AddProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
        Product product = new Product();
        product.setName(request.getParameter("productName"));
        product.setType(request.getParameter("productType"));
        product.setPlace(request.getParameter("productPlace"));
        product.setWarranty(Integer.parseInt(request.getParameter("productWarranty")));

        ProductDAO dao = new ProductDAO();
        dao.saveProduct(product);
        
        response.sendRedirect("home-page.jsp");
    }
}
