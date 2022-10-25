<%@ page import="java.util.Map" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="mt" uri="/WEB-INF/myTags.tld" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="css/style.css">

<jsp:useBean id="questionnaire" class="et.mi.checkboxform.QuestionnaireBean" scope="request">
    <jsp:setProperty name="notion" property="*"/>
</jsp:useBean>

<% if (questionnaire.validate()){%>
    <jsp:forward page="controller">
        <jsp:param name="nom" value="nom"/>
    </jsp:forward>
<% }
    Map errors = questionnaire.getErrors();
%>

<!DOCTYPE html>
<html>
<head>
    <title>index</title>
</head>
<body>
<h1><%= "Notions Objet et Java maitrisées" %>
</h1>
<h2><%= "Veuillez valider les notions Java que vous connaissez afin de poursuivre ce tutoriel" %>
</h2>
<br/>
<form action="controller" method="post">
    <table>
        <thead><tr>
            <th colspan="2">Test de connaissance Java</th></tr>
        </thead>
        <tbody>
        <label for="nom"></label>
        <input type="text" name="nom" id="nom" placeholder="Votre nom">
        <br>
        <mt:checkBoxList nomElement="notion" liste="${questionnaire.competences}" />

        </tbody>
        <tfoot><tr>
            <th colspan="2">
                <input type="submit" value="Valider">
            </th>
        </tr>
        </tfoot>
    </table>


</form>
</body>
</html>