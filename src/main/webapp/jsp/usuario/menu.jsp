

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>
<% if (oUsuario == null) { %>
<h1 class="margen-superior">Vd. no ha entrado en el sistema</h1>
<h4>Ha habido un problema con su autenticación. Revise su login o su password.</h4>
<% } else {%>

<div class="margen-superior">
    <% if (oUsuario.getId_tipousuario() == 1) { %>

    <div class="">
        <div>
            <md-button class="md-primary">I will be blue (by default)</md-button>
            <div md-theme="altTheme">
                <md-button class="md-primary">I will be purple (altTheme)</md-button>
            </div>
        </div>


        <!-- Angular Material Dependencies -->
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-animate.min.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/angularjs/1.3.6/angular-aria.min.js"></script>


        <!-- Angular Material Javascript now available via Google CDN; version 0.7 used here -->
        <script src="//ajax.googleapis.com/ajax/libs/angular_material/0.7.0/angular-material.min.js"></script>
    </div>

    <% }%>
</div>
<% }%>

