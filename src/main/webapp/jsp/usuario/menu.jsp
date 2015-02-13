

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<% UsuarioBeanGenSpImpl oUsuario = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean"); %>
<% if (oUsuario == null) { %>
<h1 class="margen-superior">Vd. no ha entrado en el sistema</h1>
<h4>Ha habido un problema con su autenticación. Revise su login o su password.</h4>
<% } else {%>

<div class="margen-superior">
    <% if (oUsuario.getId_tipousuario() == 1) { %>
    <div class="row">
        <!--<h1>Panel de Administración</h1>
        <div class="row centered">
            <a title="Ver libros" href="jsp#/libro"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Ver todos los libros</p></div></a>
            <a title="Buscar libros" href="#"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Buscar libro</p></div></a>
            <a title="Añadir libros" href="#"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Añadir un libro</p></div></a>
            <a title="Añadir una oferta" href="#"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Añadir una oferta</p></div></a>
            <a title="Gestion de usuarios" href="jsp#/usuario"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Gestión de usuarios</p></div></a>
            <a title="Ver transacciones" href="#"><div class="col-lg-5 col-sm-6 col-xs-12 bordered"><p>Ver transacciones</p></div></a>
        </div> -->

        <h1>Panel de Administración</h1>
        <!-- Pullup Card -->
        <div class="col s12 m3">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="css/images/prueba.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator">Ver todos los libros<i class="mdi-navigation-more-vert right"></i></span>
                    <p><a href="jsp#/libro">Ir</a></p>
                </div>
                <div class="card-reveal" style="transform: translateY(0px);">
                    <span class="card-title">Lista de todos los libros <i class="mdi-navigation-close right"></i></span>
                    <p>Aquí verá una lista con todos los libros que tenemos y sus especificaciones.</p>
                </div>
            </div>
        </div>
        <div class="col s12 m3">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="css/images/prueba.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator">Buscar Libro <i class="mdi-navigation-more-vert right"></i></span>
                    <p><a href="#">Ir</a></p>
                </div>
                <div class="card-reveal" style="transform: translateY(0px);">
                    <span class="card-title">Buscar Libro <i class="mdi-navigation-close right"></i></span>
                    <p>Aquí podrá buscar un libro y comprobar si lo tnemos o no.</p>
                </div>
            </div>
        </div>
        <div class="col s12 m3">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="css/images/prueba.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator">Añadir un libro <i class="mdi-navigation-more-vert right"></i></span>
                    <p><a href="jsp#/libro/new">Ir</a></p>
                </div>
                <div class="card-reveal" style="transform: translateY(0px);">
                    <span class="card-title">Añadir un libro <i class="mdi-navigation-close right"></i></span>
                    <p>Aquí podrá añadir un libro nuevo.</p>
                </div>
            </div>
        </div>
        <div class="col s12 m3">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="css/images/prueba.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator">Añadir una oferta <i class="mdi-navigation-more-vert right"></i></span>
                    <p><a href="#">Ir</a></p>
                </div>
                <div class="card-reveal" style="transform: translateY(0px);">
                    <span class="card-title">Añadir una oferta <i class="mdi-navigation-close right"></i></span>
                    <p>Aquí podrá añadir una oferta sobre un libro y descontar su precio.</p>
                </div>
            </div>
        </div>
        <div class="col s12 m3">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="css/images/prueba.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator">Gestión de clientes <i class="mdi-navigation-more-vert right"></i></span>
                    <p><a href="#">Ir</a></p>
                </div>
                <div class="card-reveal" style="transform: translateY(0px);">
                    <span class="card-title">Ver clientes <i class="mdi-navigation-close right"></i></span>
                    <p>Aquí podrá ver los clientes que tenemos.</p>
                </div>
            </div>
        </div>
        <div class="col s12 m3">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="css/images/prueba.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title">Ver transacciones <i class="mdi-navigation-more-vert right"></i></span>
                    <p><a href="#">Ir</a></p>
                </div>
                <div class="card-reveal" style="transform: translateY(0px);">
                    <span class="card-title">Ver transacciones <i class="mdi-navigation-close right"></i></span>
                    <p>Aquí podrá ver las transacciones que se hayan realizado.</p>
                </div>
            </div>
        </div>

        <hr>
    </div>



    <!-- script references -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="css/js/materialize.min.js"></script>

    <% }%>
</div>
<% }%>

