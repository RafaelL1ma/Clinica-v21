<%-- 
    Document   : listDoctor
    Created on : 13/11/2018, 11:35:17
    Author     : Mateus Alencar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html">
        <meta charset="UTF-8">
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"	%>
        <jsp:include page="../common/head.jsp"></jsp:include>
            <title>Lista de Médicos</title>
        </head>
        <body>

        <jsp:include page="../common/nav.jsp"></jsp:include>
            <div class="container">
                <form action="${pageContext.request.contextPath}/medico/busca" method="post" style="margin-top: 50px;">
                <div class="input-field col 12" style="margin-top: 50px;">

                    <label for="doctorSearch">Buscar</label>
                    <input type="text" id="doctorSearch" name="doctorName">
                    <div class="input-field col s3 offset-s6">
                        <button class="btn waves-effect waves-light" type="submit" name="action">Buscar</button>
                    </div>
                </div>
            </form>
            <h5 style="text-align: center;">Lista de Médicos</h5>
            <table border="1" style="margin-top: 40px;">
                <thead>
                    <tr>
                        <td>NOME</td>
                        <td>RG</td> 
                        <td>IDADE</td>
                        <td>CRM</td>
                        <td>ESPECIALIDADE</td>
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
                            <td>${m.specialty}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/medico/editar/${m.id}"><i class="material-icons teal-text">create</i></a>
                                <a href="${pageContext.request.contextPath}/medico/remover/${m.id}"><i class="material-icons red-text">delete</i></a>
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
