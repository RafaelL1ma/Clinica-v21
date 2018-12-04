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
        <meta charset="UTF-8">
        <jsp:include page="../common/head.jsp"></jsp:include>
        </head>
        <body>

        <jsp:include page="../common/nav.jsp"></jsp:include>

            <div class="container">
                <form class="col s12" action="novo" method="post" style="margin-top: 50px;">
                    <div><h5 style="text-align: center;" ><i class="material-icons" style="margin-top: 100px;">account_box</i>Marcar Consulta</h5></div>
                    <div class="row">
                        <div class="input-field col s6 offset-s3">
                            <select name="patientId">
                            <c:forEach var="patient" items="${et}">
                                <option value="${patient.id}">${patient.name} : ${patient.rg}</option>
                            </c:forEach>    
                        </select>
                    </div>

                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="data">Data</label>
                        <input type="text" id="data" name="care.data" class="validate">
                    </div>
                    <div class="input-field col s6 offset-s3">
                        <select name="doctorId">
                            <c:forEach var="doctor" items="${it}">
                                <option value="${doctor.id}">${doctor.name} : ${doctor.specialty}</option>
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
