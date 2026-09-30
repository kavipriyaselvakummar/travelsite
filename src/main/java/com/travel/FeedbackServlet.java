package com.travel;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

@WebServlet("/feedback")
public class FeedbackServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String rating = request.getParameter("rating");
        String category = request.getParameter("category");
        String comment = request.getParameter("comment");

        try {
            String path = getServletContext().getRealPath("/feedback.xml");
            File file = new File(path);

            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document;

            if (file.exists() && file.length() > 0) {
                document = builder.parse(file);
            } else {
                document = builder.newDocument();
                Element root = document.createElement("feedbacks");
                document.appendChild(root);
            }

            Element root = document.getDocumentElement();
            Element feedback = document.createElement("feedback");

            Element nameElement = document.createElement("name");
            nameElement.appendChild(document.createTextNode(name != null ? name : ""));
            feedback.appendChild(nameElement);

            Element emailElement = document.createElement("email");
            emailElement.appendChild(document.createTextNode(email != null ? email : ""));
            feedback.appendChild(emailElement);

            Element ratingElement = document.createElement("rating");
            ratingElement.appendChild(document.createTextNode(rating != null ? rating : ""));
            feedback.appendChild(ratingElement);

            Element categoryElement = document.createElement("category");
            categoryElement.appendChild(document.createTextNode(category != null ? category : ""));
            feedback.appendChild(categoryElement);

            Element commentElement = document.createElement("comment");
            commentElement.appendChild(document.createTextNode(comment != null ? comment : ""));
            feedback.appendChild(commentElement);

            root.appendChild(feedback);

            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            transformer.setOutputProperty(OutputKeys.INDENT, "yes");

            DOMSource source = new DOMSource(document);
            FileOutputStream output = new FileOutputStream(file);
            StreamResult result = new StreamResult(output);
            transformer.transform(source, result);
            output.close();

            request.setAttribute("name", name);
            request.getRequestDispatcher("feedbacksuccess.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("name", name);
            request.getRequestDispatcher("feedbacksuccess.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/feedback.jsp");
    }
}