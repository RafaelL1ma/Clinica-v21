/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.components;

import java.io.Serializable;
import javax.enterprise.context.SessionScoped;

/**
 *
 * @author Mateus Alencar
 */
@SessionScoped
public class UserSession implements Serializable{
    
    	private boolean isLogged;

	public boolean isLogged() {
		return isLogged;
	}

	public void setLogged(boolean isLogged) {
		this.isLogged = isLogged;
	}
}
