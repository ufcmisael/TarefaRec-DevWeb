<%@ page import="models.Cliente" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cliente Inserido</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
    <symbol id="check-circle-fill" viewBox="0 0 16 16">
        <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
    </symbol>
    <symbol id="exclamation-triangle-fill" viewBox="0 0 16 16">
        <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
    </symbol>
</svg>

<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-8 col-lg-6">
            <% if (request.getAttribute("mensagem") != null) { %>
            <div class="alert alert-success d-flex align-items-center shadow-sm" role="alert">
                <svg class="bi flex-shrink-0 me-2" role="img" width="24" height="24"><use xlink:href="#check-circle-fill"/></svg>
                <div><h5 class="mb-0"><%= request.getAttribute("mensagem") %></h5></div>
            </div>
            <% } %>

            <% if (request.getAttribute("mensagemErro") != null) { %>
            <div class="alert alert-danger d-flex align-items-center shadow-sm" role="alert">
                <svg class="bi flex-shrink-0 me-2" role="img" width="24" height="24"><use xlink:href="#exclamation-triangle-fill"/></svg>
                <div><h5 class="mb-0"><%= request.getAttribute("mensagemErro") %></h5></div>
            </div>
            <% } %>
        </div>
    </div>

    <%
        // PRIMEIRA E ÚNICA DECLARAÇÃO:
        Cliente cliente = (Cliente) request.getAttribute("cliente");
        if (cliente != null) {
    %>
    <div class="row justify-content-center mt-4">
        <div class="col-md-10 col-lg-8">
            <div class="card shadow">
                <div class="card-header bg-dark text-white">
                    <h4 class="mb-0">Dados do Cliente Inserido</h4>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-hover mb-0">
                            <thead class="table-light">
                            <tr>
                                <th>Id</th>
                                <th>Nome</th>
                                <th>Email</th>
                                <th>Idade</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><%= cliente.getId() %></td>
                                <td><%= cliente.getNome() %></td>
                                <td><%= cliente.getEmail() %></td>
                                <td><%= cliente.getIdade() %></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer text-end">
                    <a class="btn btn-dark" href="<%= request.getContextPath() %>/Cadastro" role="button">Voltar ao Formulário</a>
                </div>
            </div>
        </div>
    </div>
    <% } else { %>
    <div class="text-center mt-5">
        <a class="btn btn-dark" href="<%= request.getContextPath() %>/Cadastro" role="button">Ir para Formulário de Cadastro</a>
    </div>
    <% } %>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>