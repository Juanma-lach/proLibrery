/* 
 * Copyright (C) 2014 rafa
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

var libroControl = function (strClase) {
    this.clase = strClase;
};
libroControl.prototype = new control('libro');
libroControl.prototype.getClassNameLibro = function () {
    return this.getClassName() + "Control";
};
var oLibroControl = new libroControl('libro');

libroControl.prototype.listar = function (place, oModel, oView) {
    var thisObject = this;
    $(place).empty();
    var oLibroModel = oModel;
    var oLibroView = oView;
    data = oLibroModel.setGenericOperation("getpage&rpp=5000","");
    listadoLibros = oLibroView.getLibrosList(data);
    $("#indexContenido").html(listadoLibros);
};

libroControl.prototype.buscar = function (place, objParams, oModel, oView) {
    var thisObject = this;
    $(place).empty();
    var oLibroModel = oModel;
    var oLibroView = oView;
    data = oLibroModel.setGenericOperation("getpage&rpp=5000","");
    $(place).append(oView.getPanel("Busqueda",
            oLibroView.getEmptyView("buscar", 1)));
};