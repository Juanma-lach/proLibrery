<%-- 
 Copyright (C) July 2014 Rafael Aznar

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
--%>

<%@page import="net.daw.bean.generic.specific.implementation.UsuarioBeanGenSpImpl"%>
<%@page import="net.daw.helper.AppInformationHelper"%>
<%@page import="net.daw.helper.EstadoHelper"%>
<%UsuarioBeanGenSpImpl user = (UsuarioBeanGenSpImpl) request.getSession().getAttribute("usuarioBean");%>
<!--<div class="jumbotron">
    <h1>Bienvenidos a <%=AppInformationHelper.getAppName()%> <%=EstadoHelper.getAnyo()%></h1>
    <h3>Versión (v.<%=EstadoHelper.getVersion()%>) de <%=EstadoHelper.getFecha()%></h3>
    <h5>Desarrollo de aplicaciones web. CPIFP Ausiàs March. Curso <%=EstadoHelper.getCurso()%></h5>   
<%
    if (EstadoHelper.getTipo_estado() == EstadoHelper.getTipo_estado().Debug) {
        out.print("<h5>Modo debug</h5>");
    }
%>
</div>-->
<div id="intro">
    <div class="blanco"></div>
    <h1>
        ProLibrery<br/>
        <span>Tus libros al alcance de la mano.</span>
    </h1>
</div>

<!--<div class="row">
    <div class="container">
        <div class="bordered-inicio col-md-12">
            <span>Ofertas</span>
        </div>
    </div>

</div> 
<hr>-->
<%if(user != null){%>
<div class="row">
    <div class="menu-paginicial col-md-12">
        <%if (user == null) {%>    
        <a href="#/libro/buscar" class="col m4 boton-inicio waves-effect waves-light btn green lighten-1"><i class="mdi-action-search"></i>buscar libro</a>
        <a href="#/libro/libros" class="col m4 boton-inicio waves-effect waves-light btn red accent-2"><i class="mdi-action-dns"></i>ver todos los libros</a>
        <a href="#/stock/verprecios" class="col m4 boton-inicio waves-effect waves-light btn amber darken-2"><i class="mdi-action-description"></i>ver libros en tienda con precios</a>
        <%} else if (user.getId_tipousuario() == 1) {%>

        <a href="?ob=usuario&op=menu" class="col m4 offset-m1 boton-inicio waves-effect waves-light btn light-green darken-2"><i class="mdi-content-forward"></i>panel de administracion</a>
        <a href="#/libro/buscar" class="col m4 offset-m1 boton-inicio waves-effect waves-light btn green lighten-1"><i class="mdi-action-search"></i>buscar libro</a>
        <a href="#/libro/libros" class="col m4 offset-m1 boton-inicio waves-effect waves-light btn red accent-2"><i class="mdi-action-dns"></i>ver todos los libros</a>
        <a href="#/stock/verprecios" class="col m4 offset-m1 boton-inicio waves-effect waves-light btn amber darken-2"><i class="mdi-action-description"></i>ver libros en tienda con precios</a>

        <%} else {%>
        <a href="#/libro/buscar" class="col m4 boton-inicio waves-effect waves-light btn green lighten-1"><i class="mdi-action-search"></i>buscar libro</a>
        <a href="#/libro/libros" class="col m4 boton-inicio waves-effect waves-light btn red accent-2"><i class="mdi-action-dns"></i>ver todos los libros</a>
        <a href="#/stock/verprecios" class="col m4 boton-inicio waves-effect waves-light btn amber darken-2"><i class="mdi-action-description"></i>ver libros en tienda con precios</a>
        <%}%>
    </div>
</div>
    
<div class="col m12 nuevosLibros">
    <p>Últimos libros</p>
    <div class="col m10 offset-m1" id="libros-nuevos"></div>
</div>
<br />
    
<div class="col m12 librosMasPuntuados">
    <p>Libros mejor valorados </p>
    <div class="col m10 offset-m1" id="librospuntuados"></div>
</div>
<br/>
<%}%>
<div class="row">
    <div class="col-md-8">
        <div class="row">

            <hr>
            <div class="col-md-6">
                <h3>¿Qué es <%=AppInformationHelper.getAppName()%>?</h3>
                <p>Es una aplicación didáctica para aprender a organizar y desarrollar 
                    aplicaciones AJAX. Está pensado para soportar mantenimientos 
                    CRUDL (create remove update delete list).</p>
            </div>
            <div class="col-md-6">
                <h3>¿Para qué sirve?</h3>
                <p>Se trata de una aplicación de carácter didáctico. 
                    Se ha estructurado siguiendo un modelo MVC que permita a los alumnos 
                    conocer un referente para diseñar en un futuro sus proyectos.                    
                </p>
            </div>    
        </div>
        <div class="row">    
            <div class="col-md-6">
                <h3>¿Quién la ha desarrollado?</h3>
                <p>La ha desarrollado <%=EstadoHelper.getAutor()%>,
                    profesor de DAW en el CPIFP Ausiàs March de Valencia (Spain).
                    Puedes contactar en <%=EstadoHelper.getMailAutor()%>.</p>
            </div> 
            <div class="col-md-6">
                <h3>¿Qué licencia tiene?</h3>
                <p>La he liberado con licencia <%=EstadoHelper.getLicenciaLink()%></p>
            </div>

        </div>
    </div>
    <div class="col-md-4">
        <h3>¿Cuáles son sus características?</h3>
        <ul>
            <li>Es un desarrollo didáctico</li>
            <li>Estructura de servidor MVC por niveles sin frameworks</li> 
            <li>Servidor escrito en Java (servlets y jsp)</li>  
            <li>Dos controladores, uno para servir jsp y otro para servir json</li>  
            <li>Cliente AJAX con Javascript y JQuery</li>              
            <li>Cliente desarrollado sobre Bootstrap responsivo</li>
            <li>Acceso a datos (base de datos MySQL) mediante clases de negocio y DAO</li>
            <li>Mantenimientos paginados</li>
            <li>Ajax Stock soporta Relaciones 1:M</li>
            <li>Ajax Stock soporta Relaciones M:M</li>
        </ul>
    </div>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">

    $(document).ready(function () {
        $.ajax({
            url: "http://localhost:8081/proLibrary/json?ob=libro&op=getpage&order=puntuacion&ordervalue=desc",
            type: "GET",
            dataType: "json",
            success: function (data) {
                listado = "";
                for (i = 1; i <= 4; i++) {
                    imagen = data.list[i].urlimagen;
                    titulo = data.list[i].titulo;
                    isbn = data.list[i].isbn;
                    editorial = data.list[i].editorial;
                    puntuacion = data.list[i].puntuacion;
                    longTitulo = titulo.substring(0, 25);
                    longT = longTitulo.length;
                    listado += "<div class='hovered col s6 m3'>";
                    listado += "<div class='card'>";
                    listado += "<div class='card-image waves-effect waves-block waves-light'>";
                    listado += "<img class='img-list activator' src='images/" + imagen + ".jpg' />";
                    listado += "</div>";
                    listado += "<div class='card-content'>";
                    listado += "<span class='card-title activator'>" + titulo.substring(0, 25);
                    if (longT >= 25) {
                        listado += "...";
                    }
                    listado += "<i class='mdi-navigation-more-vert right'></i></span>";
                    listado += "<p> Valoración: " + puntuacion + "</p></div>";
                    listado += "<div class='card-reveal' style='transform: translateY(0px);'>"
                    listado += "<span class='card-title'>" + titulo;
                    listado += "<i class='mdi-navigation-close right'></i></span>";
                    listado += "<p>EDITORIAL: " + editorial + "</p><p> ISBN: " + isbn + "</p></div>";
                    listado += "</div>";
                    listado += "</div>";
                }

                $("#librospuntuados").html(listado);
            }});

        $.ajax({
            url: "http://localhost:8081/proLibrary/json?ob=libro&op=getpage&order=id&ordervalue=desc",
            type: "GET",
            dataType: "json",
            success: function (data) {
                listado2 = "";
                for (i = 1; i <= 4; i++) {
                    imagen2 = data.list[i].urlimagen;
                    titulo2 = data.list[i].titulo;
                    isbn2 = data.list[i].isbn;
                    editorial2 = data.list[i].editorial;
                    puntuacion2 = data.list[i].puntuacion;
                    longTitulo2 = titulo2.substring(0, 25);
                    longT2 = longTitulo2.length;
                    listado2 += "<div class='hovered col s6 m3'>";
                    listado2 += "<div class='card'>";
                    listado2 += "<div class='card-image waves-effect waves-block waves-light'>";
                    listado2 += "<img class='img-list activator' src='images/" + imagen2 + ".jpg' />";
                    listado2 += "</div>";
                    listado2 += "<div class='card-content'>";
                    listado2 += "<span class='card-title activator'>" + titulo2.substring(0, 25);
                    if (longT2 >= 25) {
                        listado2 += "...";
                    }
                    listado2 += "<i class='mdi-navigation-more-vert right'></i></span>";
                    listado2 += "<p> Valoración: " + puntuacion2 + "</p></div>";
                    listado2 += "<div class='card-reveal' style='transform: translateY(0px);'>"
                    listado2 += "<span class='card-title'>" + titulo2;
                    listado2 += "<i class='mdi-navigation-close right'></i></span>";
                    listado2 += "<p>EDITORIAL: " + editorial2 + "</p><p> ISBN: " + isbn2 + "</p></div>";
                    listado2 += "</div>";
                    listado2 += "</div>";
                }

                $("#libros-nuevos").html(listado2);
            }});

    });



</script>