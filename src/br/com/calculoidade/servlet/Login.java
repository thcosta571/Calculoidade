package br.com.calculoidade.servlet;

import br.com.calculoidade.entidade.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");

        Usuario usuario = new Usuario(isNotBlank(login) ? login : "",
                isNotBlank(senha) ? senha : "");

        if(autenticar(usuario)){
            request.setAttribute("autenticate", true);
            request.getRequestDispatcher("calculoidade.jsp").forward(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }

    }

    private Boolean autenticar(Usuario usuario) {
        if((usuario.getLogin().equals("admin") && usuario.getSenha().equals("admin123"))
            || (usuario.getLogin().equals("teste") && usuario.getSenha().equals("teste123"))
            || (usuario.getLogin().equals("thiago") && usuario.getSenha().equals("thiago123"))) {
            return true;
        }
        return false;
    }

    private Boolean isNotBlank(String s) {
        return s != null ? s.trim() != "" : false;
    }
}
