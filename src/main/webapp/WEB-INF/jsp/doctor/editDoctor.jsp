<%-- 
    Document   : editDoctor
    Created on : 13/11/2018, 11:33:14
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
            <form action="${pageContext.request.contextPath}/medico/atualizar" method="post">
            <div  class="card-panel teal lighten-2 " ><h5><i class="material-icons">account_box</i> Editar Medico</h5></div>
                <div>
                <input type="hidden" name="doctor.id" value="${doctor.id}">
                </div>
                <div class="row">
                <div class="input-field col s6 offset-s3 ">
                    <label class="active" for="name">Nome</label>
                    <br><input type="text" id="name" name="doctor.name" value="${doctor.name}" class="validate"><br>
                </div>
                
                <div class="input-field col s6 offset-s3 ">
                    <label class="active" for="rg">RG</label>
                    <input type="text" id="rg" name="doctor.rg" value="${doctor.rg}" class="validate"><br>
                </div>
                <div class="input-field col s6 offset-s3 ">
                    <label class="active" for="age">Age</label>
                    <input type="text" id="age" name="doctor.age" value="${doctor.age}" class="validate"><br>
                </div>
                <div class="input-field col s6 offset-s3 ">
                    <label class="active" for="crm">CRM</label>
                    <input type="text" id="crm" name="doctor.crm" value="${doctor.crm}" class="validate"><br>
                    <button class="btn waves-effect waves-light" type="submit">Editar Medico</button>
                </div>


            </form>
        </div>
            
        </div>
                    
                 <jsp:include page="../common/footer.jsp"></jsp:include>   
                 <jsp:include page="../common/js.jsp"></jsp:include>
                 
                    
    </body>
</html>
