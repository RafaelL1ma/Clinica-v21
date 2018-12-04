<%-- 
    Document   : newDoctor
    Created on : 13/11/2018, 11:32:13
    Author     : Mateus Alencar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar médico</title>
        <jsp:include page="../common/head.jsp"></jsp:include>
        <meta charset="UTF-8">
        </head>
        <body>
        <jsp:include page="../common/nav.jsp"></jsp:include>
            <div class="container">  
                <form class="col s12" action="novo" method="post" style="margin-top: 30px" > 
                    <br>
                    <div ><h5 style="text-align: center;"><i class="material-icons">account_box</i> Cadastro de Medico</h5></div>
                    <div class="row">
                        <div class="input-field col s6 offset-s3 ">
                            <label class="active" for="name">Nome</label>
                            <br><input type="text" id="name" name="doctor.name" class="validate"><br>
                        </div>
                        <div class="input-field col s6 offset-s3 ">
                            <label class="active" for="rg">RG</label>
                            <input type="text" id="rg" name="doctor.rg" class="validate"><br>
                        </div>
                        <div class="input-field col s6 offset-s3 ">
                            <label class="active" for="age">Idade</label>
                            <input type="text" id="age" name="doctor.age" class="validate"><br>
                        </div>
                        <div class="input-field col s6 offset-s3 ">
                            <label class="active" for="crm">CRM</label>
                            <input type="text" id="crm" name="doctor.crm" class="validate"><br>

                        </div>
                        <div class="input-field col s6 offset-s3 ">
                            <label class="active" for="specialty">Especialidade</label>
                            <input type="text" id="specialty" name="doctor.specialty" class="validate"><br>
                        </div>
                        <div class="input-field col s6 offset-s5 ">
                            <button class="btn waves-effect waves-light" type="submit">Cadatrar Medico</button>
                        </div>
                </form> 
            </div>
        </div>    
    <jsp:include page="../common/footer.jsp"></jsp:include>
    <jsp:include page="../common/js.jsp"></jsp:include>

</body>
</html>
