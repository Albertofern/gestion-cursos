/**
 * 
 */
package com.ipartek.formacion.dbms.persistence;

import java.io.Serializable;

import javax.validation.constraints.Size;

/**
 * @author Alberto
 *
 */
public class Curso implements Comparable<Curso>, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7762540983446312687L;

	public static final int CODIGO_NULO = -1;
	
	private int codigo;
	@Size(message="Debe de tener entre {min} y {max}", min=3, max=150)
	private String nomcurso;
	@Size(message="Debe de tener entre {min} y {max}", min=3, max=10)
	private String codcurso;
	/**
	 * 
	 */
	public Curso() {
		super();
		this.codigo = CODIGO_NULO;
		this.nomcurso = "";
		this.codcurso = "";
	}
	/**
	 * @return the codigo
	 */
	public int getCodigo() {
		return codigo;
	}
	/**
	 * @param codigo the codigo to set
	 */
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	/**
	 * @return the nomcurso
	 */
	public String getNomcurso() {
		return nomcurso;
	}
	/**
	 * @param nomcurso the nomcurso to set
	 */
	public void setNomcurso(String nomcurso) {
		this.nomcurso = nomcurso;
	}
	/**
	 * @return the codcurso
	 */
	public String getCodcurso() {
		return codcurso;
	}
	/**
	 * @param codcurso the codcurso to set
	 */
	public void setCodcurso(String codcurso) {
		this.codcurso = codcurso;
	}
	
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + codigo;
		return result;
	}
	
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		boolean iguales = false;
		if (obj != null && obj instanceof Curso) {
			Curso cur = (Curso) obj;
			if (this == cur || (cur.getCodigo() == this.codigo)) {
				iguales = true;
			}
		}
		return iguales;
	}
	
	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Comparable#compareTo(java.lang.Object)
	 */
	@Override
	public int compareTo(Curso o) {
		return this.nomcurso.compareToIgnoreCase(o.getNomcurso());
	
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Curso [codigo=" + codigo + ", nomcurso=" + nomcurso + ", codcurso=" + codcurso + "]";
	}

	
	
}
