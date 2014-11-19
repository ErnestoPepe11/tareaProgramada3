/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.grafo;

/**
 *
 * @author Ernesto Brenes C
 */
public class Grafo{
	private ListaEnlazada listaElementos;

	public Grafo(){
		listaElementos = new ListaEnlazada();
	}

	public ListaEnlazada obtenerListaNodos(){
		return this.listaElementos;
	}

	public void imprimirGrafo(){
		this.listaElementos.establecerActual();
		while(listaElementos.obtenerActual() != null){
			System.out.println("El nodo "+listaElementos.obtenerActual().obtenerElemento().getNombre()+" se relaciona con: ");
			Nodo actual = listaElementos.obtenerActual().obtenerElemento();
			actual.getRelacion().imprimirLista();
			listaElementos.establecerActual(listaElementos.obtenerActual().obtenerSiguiente());
		}
	}


	public void agregarAlGrafo(String nombre, String correo, String FechaN, String edad, String carrera, String telefono){
		listaElementos.agregarElemento( nombre, correo, FechaN, edad, carrera, telefono);
	}

	public void establecerRelacion(String nombre1, String nombre2){
	    Nodo n1 = this.listaElementos.obtenerElemento(nombre1);
	    Nodo n2 = this.listaElementos.obtenerElemento(nombre2);   
		n1.getRelacion().agregarNodo(n2);
	}
		
	public void eliminarRelacion(String nombre1, String nombre2){
	    Nodo n1 = this.listaElementos.obtenerElemento(nombre1);
	    Nodo n2 = this.listaElementos.obtenerElemento(nombre2);   
		n1.getRelacion().eliminar(n2);
	}

	public void establecerCaminosyVisitados(){
		this.listaElementos.establecerActual();
		while(listaElementos.obtenerActual() != null){
			listaElementos.obtenerActual().obtenerElemento().setVisitado(false);
			listaElementos.obtenerActual().obtenerElemento().getCamino().empty();
			listaElementos.establecerActual(listaElementos.obtenerActual().obtenerSiguiente());
		}
	}
/*
	public static void main(String[] args){
		Grafo pp =  new Grafo();
		pp.agregarAlGrafo("Ernesto");
		pp.agregarAlGrafo("Luz Mery");
		pp.agregarAlGrafo("Arianne");
		pp.agregarAlGrafo("Papi");
		pp.agregarAlGrafo("Mami");
		pp.agregarAlGrafo("Mortadela");
		pp.agregarAlGrafo("Yina");
		pp.agregarAlGrafo("Juan");
		pp.establecerRelacion("Ernesto","Arianne");
		pp.establecerRelacion("Ernesto","Luz Mery");
		pp.establecerRelacion("Luz Mery","Yina");
		pp.establecerRelacion("Mortadela","Luz Mery");
		pp.establecerRelacion("Papi","Mami");
		pp.establecerRelacion("Arianne","Luz Mery");
		pp.establecerRelacion("Luz Mery","Arianne");
		pp.imprimirGrafo();
		pp.eliminarRelacion("Ernesto","Arianne");
		pp.eliminarRelacion("Ernesto","Luz Mery");
		pp.imprimirGrafo();}*/



	


}