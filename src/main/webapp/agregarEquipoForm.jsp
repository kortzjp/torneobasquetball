<%-- 
    Document   : agregarEquipoForm
    Created on : 25/06/2019, 03:26:33 PM
    Author     : Cesar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Usuario - TODO</title>
        <jsp:include page="headers.jsp"/>
    </head>
    <body>
        <p>&nbsp;</p>
        <div id="container" class="container">
            <form action="agregarEquipoDo.jsp" method="POST">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Nombre:</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Logotipo:</label>
                        <div class="col-md-12 col-sm-12 col-xs-12 dropzone">

                        </div>                        
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Color Primario:</label>
                        <input class="jscolor form-control" id="color_primario" name="color_primario" placeholder="Color Primario" value="ab2567">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Color Secundario:</label>
                        <input class="jscolor form-control" id="color_secundaria" name="color_secundaria" placeholder="Color Secundario" value="110BAB">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
    </body>
    <script>
        $(".dropzone").dropzone({
            url: 'upload.do',
            paramName: 'logo',
            maxFilesize: 5,
            maxFiles: 1,
            dictDefaultMessage: 'Arrastre los archivos o de clic',
            addRemoveLinks: true,
            dictResponseError: 'Server not Configured',
            acceptedFiles: ".png,.jpg,.gif,.bmp,.jpeg",
            init: function () {
                var dropzone = this;
                var pn = dropzone.options.paramName;
                dropzone.options.addRemoveLinks = true;
                dropzone.options.dictRemoveFile = "Eliminar";
                dropzone.options.dictResponseError = "No se pudo subir";

                dropzone.on("addedfile", function (file) {
                    console.log('new file added ', file.upload.filename);
                    $("input[name='logotipo']").remove();
                    $('<input>').attr({
                        type: 'hidden',
                        value: file.upload.filename,
                        name: 'logotipo'
                    }).appendTo('form');
                    $('.dz-progress').hide();
                    $('.dz-size').hide();
                    $('.dz-error-mark').hide();
                });

            }
        });

    </script>
</html>

<!-- 
    javascript 
    monddb
    express
    angular
    nodejs
    spring with java
    html & css
-->