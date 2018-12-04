<%-- 
    Document   : listMedicalCare
    Created on : 13/11/2018, 23:37:50
    Author     : Mateus Alencar
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Consultas</title>
        <jsp:include page="../common/head.jsp"></jsp:include>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <meta charset="UTF-8">
        </head>
        <body>

        <jsp:include page="../common/nav.jsp"></jsp:include>
        <div class="container">
            <form action="${pageContext.request.contextPath}/consulta/simples" method="post" style="margin-top: 50px;">
            <div class="input-field col s12 ">
                <label for="careSearch">Buscar</label>
                <input type="text" id="careSearch" name="medicalCareDate">
            </div>
            <div class="input-field col s12">
                <button class="btn waves-effect waves-light" type="submit">Buscar</button>
            </div>
        </form>
            <h5 style="text-align: center;">Lista de Consultas</h5>
        <table border="1">
            <thead>
                <tr>
                    <td>NOME</td>
                    <td>DATA</td>
                    <td>MÉDICO</td>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="m" items="${it}">
                    <tr>
                        <td>${m.patient.name}</td> 
                        <td>${m.data}</td>
                        <td>${m.doctor.name} : ${m.doctor.specialty}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/consulta/editar/${m.id}"><i class="material-icons teal-text">create</i></a>
                            <a href="${pageContext.request.contextPath}/consulta/remover/${m.id}"><i class="material-icons red-text">delete</i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        </div>
        <jsp:include page="../common/footer.jsp"></jsp:include>
        <jsp:include page="../common/js.jsp"></jsp:include>
    </body>
</html>
