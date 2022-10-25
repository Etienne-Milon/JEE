package et.mi.checkboxform;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "ControllerServlet", urlPatterns= {"/controller"})
public class ControllerServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException   {
    request.setCharacterEncoding("UTF-8");
    QuestionnaireBean questionnaireBean = new QuestionnaireBean();
    questionnaireBean.setNom(request.getParameter("nom"));
    questionnaireBean.setCompetencesAcquises(new ArrayList<>(Arrays.asList(request.getParameterValues("notion"))));
    for (String notion:questionnaireBean.getCompetences()) {
        if(!questionnaireBean.getCompetencesAcquises().contains(notion))
            questionnaireBean.getCompetencesNonAcquises().add(notion);
    }

    request.setAttribute("questionnaire",questionnaireBean);
    request.getRequestDispatcher("p2.jsp").forward(request,response);
    }

}