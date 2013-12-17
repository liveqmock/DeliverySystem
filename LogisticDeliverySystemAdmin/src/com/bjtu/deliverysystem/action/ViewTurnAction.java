package com.bjtu.deliverysystem.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.json.annotations.JSON;

import com.bjtu.deliverysystem.model.TransClass;
import com.bjtu.deliverysystem.service.TurnService;
import com.opensymphony.xwork2.ActionSupport;

public class ViewTurnAction extends ActionSupport{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private TurnService turnService;
	private String turnNum;
	private List<TransClass> turns = new ArrayList<TransClass>();
	
	
	public List<TransClass> getTurns() {
		return turns;
	}
	public void setTurns(List<TransClass> turns) {
		this.turns = turns;
	}
	public void setTurnService(TurnService turnService) {
		this.turnService = turnService;
	}
	public void setTurnNum(String turnNum) {
		this.turnNum = turnNum;
	}
	public String execute(){
		TransClass turn = turnService.getTurn(turnNum);
		turns.add(turn);
		System.out.println(turns.size());
		return SUCCESS;
	}
}
