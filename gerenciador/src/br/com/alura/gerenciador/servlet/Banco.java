package br.com.alura.gerenciador.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Empresa> lista = new ArrayList<Empresa>();
	private static Integer chaveSequencial = 1;

	static {
		Empresa e1 = new Empresa();
		e1.setNome("Squadra Digital");
		e1.setId(chaveSequencial++);

		Empresa e2 = new Empresa();
		e2.setNome("Google");
		e2.setId(chaveSequencial++);

		lista.add(e1);
		lista.add(e2);
	}

	public void add(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		Banco.lista.add(empresa);
		System.out.println("Empresa: " + empresa.getNome() + ", cadastrada com sucesso!");
	}

	public void remove(Integer id) {
		
		Iterator<Empresa> it = lista.iterator();
		while(it.hasNext()) {
			Empresa e = it.next();
			if(e.getId() == id) {
				it.remove();
				System.out.println("Empresa " + e.getNome() + ", removida com sucesso!");
			}
		}
	}

	public static List<Empresa> getLista() {
		return Banco.lista;
	}

}
