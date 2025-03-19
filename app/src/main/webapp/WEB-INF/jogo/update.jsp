<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>Editar Jogo</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <h1>Editar Jogo</h1>
            <form action="/jogo/update" method="post">
                <input type="hidden" name="id" value="${jogo.id}">
                <div class="form-group">
                    <label for="nome">TItulo:</label>
                    <input type="text" name="nome" class="form-control" value="${jogo.titulo}">
                </div>
                <div class="form-group">
                    <label for="categoria">Categoria:</label>
                    <select name="categoria" class="form-select">
                        <c:forEach var="c" items="${categorias}">
                            <option ${jogo.categoria.id == c.id ? "selected" : ""} value="${c.id}">${c.nome}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <label for="plataforma">Plataforma(s):</label>
                    <c:forEach var="p" items="${plataformas}">
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" ${jogo.plataforma.contains(p) ? "cheked" : ""} class="custom-control-input" name="plataformas" value="${p.id}" id="${p.id}">
                            <label class="custom-control-label" for="${p.id}">${p.nome}</label>
                        </div>
                    </c:forEach>
                </div>
                <br>
                <a href="/jogo/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-sucess">Salvar</button>
            </form>
        </div>
    </body>
</html>