package com.expertos.comidas.model;

import net.sf.clipsrules.jni.*;

public class CLIPS {
	private Environment clips;
	public Environment getClips() {
		return clips;
	}
	public void setClips(Environment clips) {
		this.clips = clips;
	}
	public CLIPS(String filename) {
		clips = new Environment();
		try {
			clips.load(filename);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public int[] evaluate(results r,int indice) {
		
		
		String assert_ex = String.format("(assert(comida-principal %s))", r.getResponse());
		String ceviche="";
		String encebollado="";
		String hornado="";
		String morada="";
		String fanesca="";
		String higos="";
		String cuy="";
		try {
			this.getClips().eval(assert_ex);
			this.getClips().run();
			String ind=indice+"";
			if(ind.equals("0")) {
				ind="";
			}
			 String evaluar = "(find-all-facts ((?v plato-recomendado"+ind+")) TRUE)";
			 MultifieldValue value = (MultifieldValue) this.getClips().eval(evaluar);
			FactAddressValue fv = (FactAddressValue) value.get(0);
			 value.retain();
			 /**
			  * (slot color)
(slot ceviche (type INTEGER))
(slot encebollado (type INTEGER))
(slot hornado (type INTEGER))
(slot morada (type INTEGER))
(slot fanesca (type INTEGER))
(slot higos (type INTEGER))
(slot cuy (type INTEGER))
			  * 
			  * */
			 ceviche=fv.getFactSlot("ceviche").toString();
			 encebollado=fv.getFactSlot("encebollado").toString();
			 hornado=fv.getFactSlot("hornado").toString();
			 morada=fv.getFactSlot("morada").toString();
			 fanesca=fv.getFactSlot("fanesca").toString();
			 higos=fv.getFactSlot("higos").toString();
			 cuy=fv.getFactSlot("cuy").toString();

			 
			value.release();
			  //JOptionPane.showMessageDialog(rootPane , "Le recomiendo acompañe su comida con vino "+color);
			this.getClips().reset();
			
			
		
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		int []my_results = { 
				Integer.parseInt(ceviche)
				,Integer.parseInt(encebollado)
				,Integer.parseInt(hornado)
				,Integer.parseInt(morada)
				,Integer.parseInt(fanesca)
				,Integer.parseInt(higos)
				,Integer.parseInt(cuy)};
	
		return my_results;
	}
	
}
