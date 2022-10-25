<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <ul>
            <div>
                <c:forEach items="${questionnaire.competencesAcquises}" var="competence">
                    <li>${competence}</li>
                </c:forEach>
            </div>
        </ul>

        <h3><fmt:message key="towork"/> </h3>
        <ul>
            <div>
                <c:forEach items="${questionnaire.competencesNonAcquises}" var="competence">
                    <li>${competence}</li>
                </c:forEach>
            </div>
        </ul>
        
</fmt:bundle>
    </body>
</html>
