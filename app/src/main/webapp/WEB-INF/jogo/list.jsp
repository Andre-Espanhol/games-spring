<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Jogos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
              <a class="navbar-brand" href="#">Menu</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/">Home</a>
                  </li>
                </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <h1>Jogos</h1>
                <a href="/jogo/insert" class="btn btn-primary">Novo Jogo</a>
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <th>Titulo</th>
                        <th>Categoria</th>
                        <th>Plataformas</th>
                        <th>&nbsp;</th>
                    </tr>
                    <c:forEach var="item" items="${jogos}">
                        <tr>
                            <td>${item.id}</td>
                            <td>${item.titulo}</td>
                            <td>${item.categoria.nome}</td>
                            <td>
                                <c:forEach var="p" varStatus="s" items="${item.plataformas}">
                                    ${s.getCount() > 1 ? ", " : ""}
                                    ${p.nome}
                                </c:forEach>
                            </td>
                            <td>
                                <a href="/jogo/update?id=${item.id}" class="btn btn-warning">Editar</a>
                                <a href="/jogo/delete?id=${item.id}" class="btn btn-danger">Excluir</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
        </div>
    </body>
</html>