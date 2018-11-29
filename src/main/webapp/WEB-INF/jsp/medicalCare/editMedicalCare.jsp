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
        <title>JSP Page</title>
        <jsp:include page="../common/head.jsp"></jsp:include>
           
        </head>
        <body>
            
            <jsp:include page="../common/nav.jsp"></jsp:include>
            
            <div class="container">
                <form class="col s12" action="${pageContext.request.contextPath}/consulta/atualizar" method="post">  
                <div  class="card-panel teal lighten-2 " ><h5><i class="material-icons">account_box</i> Editar Consulta</h5></div>
                <div>
                    <input type="hidden" name="medicalCare.id" value="${medicalCare.id}">
                </div>
                <div class="row">

                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="nomePaciente">Nome do paciente</label>
                        <input type="text" id="nomePaciente" name="medicalCare.nomePaciente" value="${medicalCare.nomePaciente}" class="validate">
                    </div>
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="data">Data da Consulta</label>
                        <input type="text" id="data" name="medicalCare.data" value="${medicalCare.data}" class="validate">
                        <button class="btn waves-effect waves-light" type="submit" name="action">Editar Consulta</button>
                    </div>
            </form>
        </div>
                <jsp:include page="../common/footer.jsp"></jsp:include>
                <jsp:include page="../common/js.jsp"></jsp:include>
    </body>
</html>
