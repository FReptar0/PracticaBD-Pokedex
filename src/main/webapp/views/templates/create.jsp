<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <html>

            <head>
                <title>Registrar Pokemon</title>
                <jsp:include page="../assets/header.jsp" />
            </head>

            <body>
                <jsp:include page="../assets/navbar.jsp" />
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mt-5">
                                <div class="card-header">REGISTRAR POKEMON</div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <form action="add-pokemon" method="post" novalidate
                                                class="needs-validation">
                                                <div class="form-group mb-3">
                                                    <div class="row">
                                                        <div class="col">
                                                            <label for="pokemon" class="fw-bold">Nombre</label>
                                                            <input name="name" id="pokemon" required
                                                                class="form-control" />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <label for="health" class="fw-bold">Puntos de salud</label>
                                                            <input type="number" name="health" id="health" required
                                                                class="form-control" />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <div class="row">
                                                        <div class="col">
                                                            <label for="type" class="fw-bold">Tipo</label>
                                                            <input class="form-control" id="type" name="type"
                                                                required />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <label for="height" class="fw-bold">Estatura</label>
                                                            <input name="estatura" id="height" required
                                                                class="form-control" type="number" />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <div class="row">
                                                        <div class="col">
                                                            <label for="power" class="fw-bold">Puntos de ataque</label>
                                                            <input name="damage" id="power" required
                                                                class="form-control" />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <label for="weight" class="fw-bold">Peso</label>
                                                            <input name="peso" id="weight" required class="form-control"
                                                                type="number" />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group mb-3">
                                                    <div class="row">
                                                        <div class="col-12 text-end">
                                                            <button class="btn btn-danger btn-sm"
                                                                type="button">Cancelar</button>
                                                            <button class="btn btn-success btn-sm"
                                                                type="submit">Guardar</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <script>
                    // Example starter JavaScript for disabling form submissions if there are invalid fields
                    (function () {
                        'use strict'
                        var forms = document.querySelectorAll('.needs-validation')
                        Array.prototype.slice.call(forms)
                            .forEach(function (form) {
                                form.addEventListener('submit', function (event) {
                                    if (!form.checkValidity()) {
                                        event.preventDefault()
                                        event.stopPropagation()
                                    }
                                    form.classList.add('was-validated')
                                }, false)
                            })
                    })()
                </script>
                <jsp:include page="../assets/footer.jsp" />
            </body>

            </html>