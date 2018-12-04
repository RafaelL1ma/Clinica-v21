<%-- 
    Document   : newPatient
    Created on : 20/11/2018, 20:44:13
    Author     : Mateus Alencar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Paciente</title>
        <jsp:include page="../common/head.jsp"></jsp:include>
        <meta charset="UTF-8">
    </head>
    <body>
        <jsp:include page="../common/nav.jsp"></jsp:include>
        <div class="container">
            <form class="col s12" action="novo" method="post" style="margin-top: 50px;">
                <div><h5 style="text-align: center; margin-top: 100px;" ><i class="material-icons">account_box</i> Cadastro de paciente</h5></div>
                <div class="row">
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="name">Nome </label>
                        <input type="text" id="name" name="patient.name" class="validate" required>
                    </div>
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="rg">Rg </label>
                        <input type="text" id="rg" name="patient.rg" class="validate" required>
                    </div>
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="age">Idade</label>
                        <input type="text" id="age" name="patient.age" class="validate" required>
                    </div>
                    <div class="input-field col s6 offset-s3 ">
                        <label class="active" for="weight">Peso</label>
                        <input type="text" id="weight" name="patient.weight" class="validate" required="">
                        <div class="input-field col s3 offset-s5">
                            <button class="btn waves-effect waves-light" type="submit" name="action">Cadastrar paciente</button>
                        </div>
            </form>
        </div>
    </div>
        </div>
        <jsp:include page="../common/footer.jsp"></jsp:include>
        <jsp:include page="../common/js.jsp"></jsp:include>
</body>
</html>
