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
        </head>
        <body>
            
            <jsp:include page="../common/nav.jsp"></jsp:include>
            
            <form action="${pageContext.request.contextPath}/consulta/simples" method="post">
            <input type="text" name="medicalCareDate">
            <button type="submit">Buscar</button>
        </form>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nome</th>
                    <th>Data</th> 
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="m" items="${it}">
                    <tr>
                        <td>${m.id}</td>
                        <td>${m.nomePaciente}</td> 
                        <td>${m.data}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/consulta/editar/${m.id}">Editar</a>
                            <a href="${pageContext.request.contextPath}/consulta/remover/${m.id}">Remover</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
            <jsp:include page="../common/footer.jsp"></jsp:include>
            <jsp:include page="../common/js.jsp"></jsp:include>
    </body>
</html>
