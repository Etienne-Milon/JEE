<%@ page import="java.util.Map" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="css/style.css">

<jsp:useBean id="questionnaire" class="et.mi.checkboxform.QuestionnaireBean" scope="request">
    <jsp:setProperty name="notion" property="*"/>
</jsp:useBean>
<% if (questionnaire.validate()){%>
    <jsp:forward page="p2.jsp">
        <jsp:param name="nom" value="nom"/>
        <jsp:param name="notion"  value="Classe"/>
        <jsp:param name="notion"  value="Constructeur"/>
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
<h1><%= "Notions Objet et java maitrisées" %>
</h1>
<h2><%= "Veuillez valider les notions Java que vous connaissez afin de poursuivre ce tutoriel" %>
</h2>
<br/>
<form action="p2.jsp" method="post">
    <table>
        <thead><tr>
            <th colspan="2">Test de connaissance Java</th></tr>
        </thead>
        <tbody>
            <tr>
                <td><label for="nom">Votre nom</label></td>
                <td><input type="text" value="" name="nom" id="nom"></td>
            </tr>
            <tr>
                <td><label for="classe">Classe</label></td>
                <td><input type="checkbox" value="Classe" name="notion" id="classe"> </td>
            </tr>
            <tr>
                <td><label for="constructeur">Constructeur</label></td>
                <td><input type="checkbox" value="Constructeur" name="notion" id="constructeur"></td>
            </tr>
            <tr>
                <td><label for="instance">Instance</label></td>
                <td><input type="checkbox" value="Instance" name="notion" id="instance"></td>
            </tr>
            <tr>
                <td><label for="reference">Référence</label></td>
                <td><input type="checkbox" value="Référence" name="notion" id="reference"></td>
            </tr>
            <tr>
                <td><label for="methode">Méthode</label></td>
                <td><input type="checkbox" value="Méthode" name="notion" id="methode"></td>
            </tr>
            <tr>
                <td><label for="collection">Collection</label></td>
                <td><input type="checkbox" value="Collection" name="notion" id="collection"></td>
            </tr>
            <tr>
                <td><label for="exception">Exception</label></td>
                <td><input type="checkbox" value="Exception" name="notion" id="exception"></td>
            </tr>
            <tr>
                <td><label for="interface">Interface</label></td>
                <td><input type="checkbox" value="Interface" name="notion" id="interface"></td>
            </tr>
            <tr>
                <td><label for="implementation">Implémentation</label></td>
                <td><input type="checkbox" value="Implémentation" name="notion" id="implementation"></td>
            </tr>
        </tbody>
        <tfoot><tr>
            <th colspan="2">
                <input type="submit" value="Valider"/>
            </th>
        </tr>
        </tfoot>
    </table>


</form>
</body>
</html>