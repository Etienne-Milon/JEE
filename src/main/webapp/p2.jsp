<%--
  Created by IntelliJ IDEA.
  User: etien
  Date: 24/10/2022
  Time: 08:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<jsp:useBean id="questionnaire" class="et.mi.checkboxform.QuestionnaireBean" scope="request">
    <jsp:getProperty name="notion" property="*"/>

    <head>
        <title>p2</title>
    </head>
    <body>
        <h1>Merci d'avoir répondu au questionnaire !</h1>
        <hr/>
        <p>Bonjour ${param.nom}</p>
        <%
            String[] values = request.getParameterValues("notion");
            for(String notion : values){
                out.println("<p>" + notion + "</p>" );
            }
        %>

    </body>
</html>
