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

<form action="<%= request.getContextPath()%>/Cadastro" method="post">
    <div class="mb-3">
        <label for="ClienteNome" class="form-label">Nome</label>
        <input type="text" name="nome"  class="form-control" id="ClienteNome" required>
    </div>
    <div class="mb-3">
        <label for="ClienteEmail" class="form-label">Email</label>
        <input type="email" name="email" class="form-control" id="ClienteEmail" required>
    </div>
    <div class="mb-3">
        <label for="ClienteIdade" class="form-label">Idade</label>
        <input type="text" name="idade" class="form-control" id="ClienteIdade" required>
    </div>
    <button type="submit" class="btn btn-primary">Inserir</button>
</form>

</body>
</html>
