package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novaEmpresa")
public class NovaEmpresaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
	System.out.println("Cadastrando empresa!");
	
	String nomeEmpresa = req.getParameter("nome");
	
	PrintWriter out = resp.getWriter();
	out.println("<html><body><p>Empresa " + nomeEmpresa + " cadastrada com sucesso!</p></body></html>");
	
	
	}

}
