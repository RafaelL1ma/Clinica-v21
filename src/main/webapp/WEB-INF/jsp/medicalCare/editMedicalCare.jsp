<%-- 
    Document   : editMedicalCare
    Created on : 24/11/2018, 13:15:09
    Author     : Mateus Alencar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Consulta</title>
        <jsp:include page="../common/head.jsp"></jsp:include>

        </head>
        <body>

        <jsp:include page="../common/nav.jsp"></jsp:include>

            <div class="container">
                <form class="col s12" action="${pageContext.request.contextPath}/consulta/editar" method="post" style="margin-top: 30px">  
            <div ><h5 style="text-align: center; margin-top: 100px;"><i class="material-icons">account_box</i> Editar Consulta</h5></div>
                <div>
                    <input type="hidden" name="medicalCare.id" value="${medicalCare.id}">
                </div>
                <div class="row">

                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="nomePaciente">Nome do paciente</label>
                        <input type="text" id="nomePaciente" name="medicalCare.patient.name" value="${medicalCare.patient.name}" class="validate">
                    </div>
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="data">Data da Consulta</label>
                        <input type="text" id="data" name="medicalCare.data" value="${medicalCare.data}" class="validate">
                        <div class="input-field col s3 offset-s5">
                            <button class="btn waves-effect waves-light" type="submit" name="action">Editar paciente</button>
                        </div>
                    </div>
            </form>
        </div>
    </div>
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <jsp:include page="../common/js.jsp"></jsp:include>
</body>
</html>
