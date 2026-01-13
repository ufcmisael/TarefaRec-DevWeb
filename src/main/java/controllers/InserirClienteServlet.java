package controllers;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Cliente;
import models.ClienteDAO;

import java.io.IOException;

@WebServlet("/Cadastro")
public class InserirClienteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {
        request.getRequestDispatcher("/WEB-INF/Formulario.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        int idade = Integer.parseInt(request.getParameter("idade"));
        ClienteDAO clienteDAO = new ClienteDAO();

        if (idade < 18) {
            request.setAttribute("mensagemErro", "Idade invalida!");
        } else {
            boolean sucesso = clienteDAO.inserirCliente(nome,email,idade);
            if (sucesso){
                Cliente cliente = clienteDAO.obterCliente(email);
                request.setAttribute("mensagem", "Cliente inserido com sucesso!");
                request.setAttribute("cliente", cliente);

            } else {
                request.setAttribute("mensagemErro", "Erro ao tentar inserir o Cliente!");
            }
        }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/ClienteValido.jsp");
        requestDispatcher.forward(request,response);

    }
}
