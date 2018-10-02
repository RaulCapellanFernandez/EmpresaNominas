import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;

import tablas.Categorias;
import tablas.Trabajadorbbdd;
import utils.HibernateUtils;

public class Hibernate {
	
	private Session session;


	public void meteDatos(ArrayList<DatosSalario> listaCuotas, ArrayList<DatosSalario> listaRetenciones,ArrayList<Trabajador> listaTrabajador, ArrayList<DatosSalario> listaTiposTrabajo,ArrayList<DatosSalario> listaTrienios) {
		session = HibernateUtils.getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		
		for(int i = 0; i < listaTrabajador.size(); i++) {
			createTrabajador(listaTrabajador.get(i).getNombre(),listaTrabajador.get(i).getApellidoUno(),listaTrabajador.get(i).getApellidoDos(),listaTrabajador.get(i).getDni(),listaTrabajador.get(i).getEmail(),listaTrabajador.get(i).getAltaEmpresa(),listaTrabajador.get(i).getCuentaBancaria(),listaTrabajador.get(i).getIban());
		}
		
		for(int i =0; i < listaTiposTrabajo.size(); i++) {
			createCategoria(i+1,listaTiposTrabajo.get(i).getCategoria(),listaTiposTrabajo.get(i).getSalarioBase(),listaTiposTrabajo.get(i).getComplementos());
		}
		
		
		
		tx.commit();
		session.close();
		System.exit(0);
	}


	private void createTrabajador(String nombre, String apellidoUno, String apellidoDos, String dni, String email,String altaEmpresa, String cuentaBancaria, String iban) {
		Trabajadorbbdd oTrabajador = new Trabajadorbbdd(null, null, nombre, apellidoUno, dni);
		session.save(oTrabajador);
		
	}


	private void createCategoria(int i, String categoria, double salarioBase, double complementos) {
		Categorias oCategorias = new Categorias(categoria,salarioBase,complementos);
		session.save(oCategorias);
		
	}
	
	
}
