<%-- 
    Document   : newMedicalCare
    Created on : 13/11/2018, 23:31:13
    Author     : Mateus Alencar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nova Consulta</title>

        <jsp:include page="../common/head.jsp"></jsp:include>
        </head>
        <body>

        <jsp:include page="../common/nav.jsp"></jsp:include>

            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="container">
                <form class="col s12" action="novo" method="post">
                    <div><h5 style="text-align: center;" ><i class="material-icons">account_box</i>Marcar Consulta</h5></div>
                    <div class="row">
                        <div class="input-field col s6 offset-s3 ">
                            <label class="active" for="name">Nome do paciente</label>
                            <input type="text" id="name" name="care.nomePaciente" class="validate">
                        </div>
                        <div class="input-field col s6 offset-s3 ">
                            <label class="active" for="data">Data</label>
                            <input type="text" id="data" name="care.data" class="validate">
                        </div>
                        <div class="input-field col s5 offset-s3">
                            <select name="specialty">
                            <c:forEach var="doctor" items="${it}">
                                <option value="${doctor.name}">${doctor.name} : ${doctor.specialty}</option>
                            </c:forEach>    
                        </select>
                    </div>
                    <br>
                    <br>
                    <div class="input-field col s3 offset-s5">
                        <button class="btn waves-effect waves-light" type="submit" name="action" style="margin-top: 40%;">Marcar Consulta</button>
                    </div>

                </div>
            </form>


        </div>
        <jsp:include page="../common/footer.jsp"></jsp:include>
        <jsp:include page="../common/js.jsp"></jsp:include>
    </body>
</html>
