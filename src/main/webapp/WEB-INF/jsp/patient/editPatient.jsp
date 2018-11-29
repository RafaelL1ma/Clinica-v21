<%-- 
    Document   : editPatient
    Created on : 13/11/2018, 23:14:10
    Author     : Mateus Alencar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <jsp:include page="../common/head.jsp"></jsp:include>
            
        </head>
        <body>
            
            <jsp:include page="../common/nav.jsp"></jsp:include>
            
            <div class="container">
                <form class="col s12" action="${pageContext.request.contextPath}/paciente/atualizar" method="post">
                <div  class="card-panel teal lighten-2 " ><h5><i class="material-icons">account_box</i> Editar paciente</h5></div>
                <div>
                    <input type="hidden" name="patient.id" value="${patient.id}">
                </div>
                <div class="row">
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="name">Nome do paciente</label>
                        <input  type="text" id="name" name="patient.name" value="${patient.name}"  class="validate">
                    </div>
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="rg">Rg do paciente</label>
                        <input  type="text" id="rg" name="patient.rg" value="${patient.rg}"  class="validate">
                    </div>
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="age">Idade do paciente</label>
                        <input  type="text" id="age" name="patient.age" value="${patient.age}"  class="validate">
                    </div>
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="weight">Peso do paciente</label>
                        <input  type="text" id="weight" name="patient.weight" value="${patient.weight}"  class="validate">
                        <button class="btn waves-effect waves-light" type="submit">Editar paciente</button>
                    </div>
            </form>
        </div>
    </div>
                        <jsp:include page="../common/footer.jsp"></jsp:include>
                        <jsp:include page="../common/js.jsp"></jsp:include>
</body>
</html>
