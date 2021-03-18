package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class ListaEmpresas implements Acao {
	
	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		long antes = System.currentTimeMillis();
		
		System.out.println("Ação Listando Empresas");
		
		Banco banco = new Banco();
		List<Empresa> listaEmpresas = banco.getLista();
		
		request.setAttribute("lista", listaEmpresas);
		
		long depois = System.currentTimeMillis();
		
		
		System.out.println(depois);
		System.out.println(antes);		
		System.out.println("Tempo de execução: " + (depois - antes) + " milisegundos");
		
		return "forward:listaEmpresas.jsp";
	} 

}
