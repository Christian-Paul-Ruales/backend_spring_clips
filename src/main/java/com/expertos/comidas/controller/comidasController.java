package com.expertos.comidas.controller;

import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.expertos.comidas.model.CLIPS;
import com.expertos.comidas.model.results;

import ch.qos.logback.classic.Logger;


import net.sf.clipsrules.jni.*;

@CrossOrigin(origins="http://localhost:4200",maxAge=3000)
@RestController
public class comidasController {
	/**
	@RequestMapping("/")
	public String index(Model model) {
		return "index";
	}
	*/
	
	@RequestMapping("/results")
	public results greeting(
			@RequestBody results r,
			@RequestParam(name="name",required=false,defaultValue="World") String name,
			@RequestParam(name="options", required=false,defaultValue = "Pescado")String vino,
			Model model)  throws URISyntaxException {
			/**Lista*/
		System.out.println(" ----------------------Que me llego ---"+r.getResponse());
		String [] llegadas =r.getResponse().split("-");
		int []primera= {0,0,0,0,0,0,0};

		try {
			CLIPS clip=new CLIPS("primera.CLP");
			r.setResponse(llegadas[0]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());
			
			primera=clip.evaluate(r,0);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			
			System.out.print("----------------------------- Fallo primera");
		}
		
		int []segunda= {0,0,0,0,0,0,0};
		try {
			CLIPS clip2=new CLIPS("segunda.CLP");
			r.setResponse(llegadas[1]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());

			segunda=clip2.evaluate(r,2);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("----------------------------- Fallo segunda");

		}
		
		int []tercera= {0,0,0,0,0,0,0};
		try {
			CLIPS clip3=new CLIPS("tercera.CLP");
			r.setResponse(llegadas[2]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());

			tercera=clip3.evaluate(r,3);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("----------------------------- Fallo tercera");

		}
		int []cuarta= {0,0,0,0,0,0,0};
		try {
			CLIPS clip4=new CLIPS("cuarto.CLP");
			r.setResponse(llegadas[3]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());

			cuarta=clip4.evaluate(r,4);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("----------------------------- Fallo cuarta");

		}
		
		int [] quinta= {0,0,0,0,0,0};
		try {
			CLIPS clip5=new CLIPS("quinto.CLP");
			r.setResponse(llegadas[4]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());

			quinta=clip5.evaluate(r,5);
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("----------------------------- Fallo quinta");

		}
		
		int []sexta= {0,0,0,0,0,0};
		try {
			CLIPS clip6=new CLIPS("sexto.CLP");
			r.setResponse(llegadas[5]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());

			sexta=clip6.evaluate(r,6);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("----------------------------- Fallo sexta");

		}
		int []septima= {0,0,0,0,0,0,0};
		try {
			CLIPS clip7=new CLIPS("septimo.CLP");
			r.setResponse(llegadas[6]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());

			septima=clip7.evaluate(r,7);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("----------------------------- Fallo septima");

		}
		
		int []octava= {0,0,0,0,0,0,0};
		try {
			CLIPS clip8=new CLIPS("octava.CLP");
			r.setResponse(llegadas[7]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());

			octava=clip8.evaluate(r,8);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("----------------------------- Fallo octava");

		}
	
		int []novena= {0,0,0,0,0,0,0};
		try {
			CLIPS clip9=new CLIPS("novena.CLP");
			r.setResponse(llegadas[8]);
			System.out.println(" ----------------------Que me llego ---"+r.getResponse());

			novena=clip9.evaluate(r,8);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print("----------------------------- Fallo novena");

		}
		
		
		int []total=new int[7];
		for (int i = 0; i < total.length; i++) {
			total[i]=primera[i]+segunda[i]+tercera[i]+cuarta[i]+quinta[i]+sexta[i]+septima[i]
					+octava[i]+novena[i];
		}
			//results res=new results();
			String resp=total[0]+"-"+total[1]+"-"+total[2]+"-"+total[3]
					+"-"+total[4]+"-"+total[5]+"-"+total[6] ;
			results res=new results(resp);
			System.out.println("----------------------Que envio ?:"+res.getResponse());

		return res;
	}
	
	
}