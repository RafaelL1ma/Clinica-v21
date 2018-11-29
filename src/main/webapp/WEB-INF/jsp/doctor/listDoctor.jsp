<%-- 
    Document   : listDoctor
    Created on : 13/11/2018, 11:35:17
    Author     : Mateus Alencar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
        <jsp:include page="../common/head.jsp"></jsp:include>
            <title>Lista de Médicos</title>
        </head>
        <body>
            
            <jsp:include page="../common/nav.jsp"></jsp:include>
            
            <form action="${pageContext.request.contextPath}/medico/busca" method="post">
            <input type="text" name="doctorName">
            <button type="submit">Buscar</button>
        </form>
        <h5>Lista de Médicos</h5>
        <table border="1">
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>RG</th> 
                    <th>Idade</th>
                    <th>Crm</th>
                    <th>AÇÕES</th>

                </tr>
            </thead>
            <tbody>
                <c:forEach var="m" items="${it}">
                    <tr>
                        <td>${m.name}</td>
                        <td>${m.rg}</td>             
                        <td>${m.age}</td>
                        <td>${m.crm}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/medico/editar/${m.id}">Editar</a>
                            <a href="${pageContext.request.contextPath}/medico/remover/${m.id}">Remover</a>
                        </td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>
        
        <jsp:include page="../common/footer.jsp"></jsp:include>
        <jsp:include page="../common/js.jsp"></jsp:include>
        
    </body>
</html>
