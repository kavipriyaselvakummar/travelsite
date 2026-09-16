package com.travel;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

@WebServlet("/feedbackSearch")
public class FeedbackSearchServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String rating =
                request.getParameter("rating");

        if (rating == null) {

            rating = "3";
        }

        try {

            String path =
                getServletContext()
                    .getRealPath("/feedback.xml");

            File file = new File(path);


            DocumentBuilderFactory factory =
                DocumentBuilderFactory.newInstance();

            DocumentBuilder builder =
                factory.newDocumentBuilder();

            Document document =
                builder.parse(file);


            XPathFactory xpathFactory =
                XPathFactory.newInstance();

            XPath xpath =
                xpathFactory.newXPath();


            String expression =
                "/feedbacks/feedback[rating>"
                + rating + "]";


            NodeList nodes =
                (NodeList) xpath.evaluate(
                    expression,
                    document,
                    XPathConstants.NODESET);


            request.setAttribute(
                "results",
                nodes);

            request.setAttribute(
                "rating",
                rating);


            request.getRequestDispatcher(
                "feedbackSearchResult.jsp")
                .forward(request, response);

        }
        catch (Exception e) {

            e.printStackTrace();

            response.getWriter().println(
                "Search Error: "
                + e.getMessage());
        }
    }
}