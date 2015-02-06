

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>
<% if (oUsuario == null) { %>
<h1 class="margen-superior">Vd. no ha entrado en el sistema</h1>
<h4>Ha habido un problema con su autenticación. Revise su login o su password.</h4>
<% } else {%>

<div class="margen-superior">
    <% if (oUsuario.getId_tipousuario() == 1) { %>

    <div class="container">
        <div class="row">
            <h1>Panel de Administración</h1>
            <div class="row centered">
                <a title="Ver libros" href="jsp#/libro"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Ver todos los libros</p></div></a>
                <a title="Buscar libros" href="#"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Buscar libro</p></div></a>
                <a title="Añadir libros" href="#"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Añadir un libro</p></div></a>
                <a title="Añadir una oferta" href="#"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Añadir una oferta</p></div></a>
                <a title="Gestion de usuarios" href="jsp#/usuario"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Gestión de usuarios</p></div></a>
                <a title="Ver transacciones" href="#"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Ver transacciones</p></div></a>
            </div>
            <hr>
        </div>
    </div>



    <!-- script references -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>

    <% }%>
</div>
<% }%>

