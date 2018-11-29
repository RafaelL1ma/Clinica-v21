<%-- 
    Document   : listPatient
    Created on : 13/11/2018, 23:13:57
    Author     : Mateus Alencar
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lista</title>
        <jsp:include page="../common/head.jsp"></jsp:include>
        </head>
        <body>

        <jsp:include page="../common/nav.jsp"></jsp:include>
            <div class="container">

                <form action="${pageContext.request.contextPath}/paciente/simples" method="post">
                <div class="input-field col s6">
                    <input type="text" name="patientName">
                </div>
                <div class="input-field col s3 offset-s10">
                    <button class="btn waves-effect waves-light" type="submit" name="action">Buscar</button>
                </div>
            </form>
            <table class="highlight" border="1">
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>NOME</td>
                        <td>RG</td>
                        <td>IDADE</td>
                        <td>PESO</td>
                        <th>AÇÕES</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${it}">
                        <tr>
                            <td>${p.id}</td>
                            <td>${p.name}</td>
                            <td>${p.rg}</td>             
                            <td>${p.age}</td>
                            <td>${p.weight}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/paciente/editar/${p.id}">Editar</a>
                                <a href="${pageContext.request.contextPath}/paciente/remover/${p.id}">remover</a>
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