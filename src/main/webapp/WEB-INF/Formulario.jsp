<%--
  Created by IntelliJ IDEA.
  User: mslms
  Date: 1/12/26
  Time: 10:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <title>TrabalhoRec</title>
</head>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow">
                <div class="card-header bg-dark text-white">
                    <h3 class="card-title mb-0">Novo Cliente</h3>
                </div>
                <div class="card-body">
                    <form action="<%= request.getContextPath()%>/Cadastro" method="post">
                        <div class="mb-3">
                            <label class="form-label">Nome</label>
                            <input type="text" name="nome" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Email</label>
                            <input type="email" name="email" class="form-control" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Idade</label>
                            <input type="number" name="idade" class="form-control" required>
                        </div>
                        <button type="submit" class="btn btn-dark w-100">Cadastrar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
