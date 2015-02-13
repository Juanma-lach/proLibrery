/* 
 * Copyright (C) 2014 raznara
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */


var libroView = function (strClase) {
    this.clase = strClase;
};
libroView.prototype = new view('libro');
libroView.prototype.getClassNameLibro = function () {
    return this.getClassName() + "Vista";
};
var oLibroView = new libroView('libro');


libroView.prototype.okValidation = function (f) {
    $('#libroForm').on('success.form.bv', f);
};

libroView.prototype.getLibrosList = function (jason) {
    for (i = 0; i < jason.list.length; i++) {
        titulo = jason.list[i].titulo;
        isbn = jason.list[i].isbn;
        editorial = jason.list[i].isbn;
        listado = "<div class='col s12 m3'><div class='card'>\n\
        <div class='card-image waves-effect waves-block waves-light>\n\
        <img class='activator' src='css/images/prueba.jpg'></div><div class='card-content'>\n\
        <span class='card-title activator'>" + titulo +
        "<i class='mdi-navigation-more-vert right'></i></span></div>\n\
        <div class='card-reveal' style='transform: translateY(0px);'>\n\
        <span class='card-title'>Lista de todos los libros \n\
        <i class='mdi-navigation-close right'></i></span>\n\
        <p>" + editorial + "</p><p>" + isbn + "</p></div>"
    }
    listado += "</div>";
    listado += "</div>";
    //listado += "<script src='//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js'></script>";
    //listado += "<script src='js/bootstrap.min.js'></script>";
    //listado += "<script src='js/scripts.js'></script>";
    //listado += "<script type='text/javascript' src='https://code.jquery.com/jquery-2.1.1.min.js'></script>";
    //listado += "<script type='text/javascript' src='css/js/materialize.min.js'></script>";
    return listado;
};