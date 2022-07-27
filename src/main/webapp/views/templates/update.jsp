<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <html>

            <head>
                <title>Actualizar Pokemon</title>
                <jsp:include page="../assets/header.jsp" />
            </head>

            <body>
                <jsp:include page="../assets/navbar.jsp" />
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mt-5">
                                <div class="card-header">ACTUALIZAR POKEMON</div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-12">
                                            <form action="save-pokemon" method="post" novalidate
                                                class="needs-validation">
                                                <div class="form-group mb-3">
                                                    <div class="row">
                                                        <div class="col">
                                                            <label for="pokemon" class="fw-bold">Nombre</label>
                                                            <input name="name" id="pokemon" required
                                                                value="${pokemon.name}" class="form-control" />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                            <input type="hidden" name="id" value="${pokemon.id}">
                                                        </div>
                                                        <div class="col">
                                                            <label for="health" class="fw-bold">Puntos de salud</label>
                                                            <input type="number" name="health" value="${pokemon.health}"
                                                                id="health" required class="form-control" />
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
                                                            <input class="form-control" value="${pokemon.pokemonType}"
                                                                id="type" name="type" required />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <label for="height" class="fw-bold">Estatura</label>
                                                            <input name="estatura" id="height" value="${pokemon.height}"
                                                                required class="form-control" type="number" />
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
                                                            <input name="damage" id="power" value="${pokemon.power}"
                                                                required class="form-control" />
                                                            <div class="invalid-feedback">
                                                                Campo obligatorio
                                                            </div>
                                                        </div>
                                                        <div class="col">
                                                            <label for="weight" class="fw-bold">Peso</label>
                                                            <input name="peso" id="weight" value="${pokemon.weight}"
                                                                required class="form-control" type="number" />
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
                                                                type="submit">Actualizar</button>
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