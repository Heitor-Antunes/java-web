package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.List;

public class Banco {

	private static List<Empresa> lista = new ArrayList<Empresa>();

	static {
		Empresa e1 = new Empresa();
		e1.setNome("Squadra Digital");

		Empresa e2 = new Empresa();
		e2.setNome("Google");

		Empresa e3 = new Empresa();
		e3.setNome("Facebook");
		
		lista.add(e1);
		lista.add(e2);
		lista.add(e3);
	}

	public void add(Empresa empresa) {
		Banco.lista.add(empresa);
		System.out.println("Empresa: " + empresa.getNome() + ", cadastrada com sucesso!");
	}

	public static List<Empresa> getLista() {
		return Banco.lista;
	}

}
