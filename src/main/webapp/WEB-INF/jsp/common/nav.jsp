  

 <ul id="dropdown1" class="dropdown-content">
                <li><a href="${pageContext.request.contextPath}/paciente/lista">Paciente</a></li>
                <li class="divider"></li>
                <li><a href="${pageContext.request.contextPath}/medico/lista">Medico</a></li>
                <li class="divider"></li>
                <li><a href="${pageContext.request.contextPath}/consulta/lista">Consulta</a></li>
            </ul>
            
<nav class=" teal escurecer-1" role="navigation">    
    <div class="nav-wrapper container">
        <a id="logo-container" href="${pageContext.request.contextPath}/" class="brand-logo"style="color:white" >ClinicaLife</a>
        <ul class="right hide-on-med-and-down">
            <li><a href="${pageContext.request.contextPath}/paciente/novo"style="color:white">Cadastrar</a></li>
            <li><a href="${pageContext.request.contextPath}/medico/novo"style="color:white">Cadastrar Médico</a></li>
            <li><a href="${pageContext.request.contextPath}/consulta/novo"style="color:white">Marcar Consulta</a></li>
            <li><a class="dropdown-trigger" href="#!" name="dropdown1" data-target="dropdown1"style="color:white">Listar<i class="material-icons right" >arrow_drop_down</i></a></li>


        </ul>

        <ul id="nav-mobile" class="sidenav">

        </ul>
        <a href="#" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
    </div>
</nav>