<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="mt" uri="/WEB-INF/myTags.tld" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="css/style.css">
<html>

<jsp:useBean id="questionnaire" class="et.mi.checkboxform.QuestionnaireBean" scope="request"/>
<fmt:setLocale value="en_en" scope="session"/>
<fmt:bundle basename="message">

    <head>
        <title><fmt:message key="skills"/></title>
    </head>
    <body>
        <h1><fmt:message key="thanks"/></h1>
        <hr/>
        <p><fmt:message key="hello">
            <fmt:param value="${questionnaire.nom}"/>
        </fmt:message></p>

        <h3><fmt:message key="mastered"/> </h3>
        <div>
            <mt:UlList liste="${questionnaire.competencesAcquises}"></mt:UlList>
        </div>
        <h3><fmt:message key="towork"/> </h3>
        <div>
            <mt:UlList liste="${questionnaire.competencesNonAcquises}"></mt:UlList>
        </div>
</fmt:bundle>
    </body>
</html>
