package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TGonggaoDAO;
import com.dao.TNewsDAO;
import com.dao.TShipinDAO;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TNewsDAO newsDAO;
	private TShipinDAO shipinDAO;
	
	
	public String index()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		
		
		List newsList=newsDAO.findAll();
		if(newsList.size()>5)
		{
			newsList=newsList.subList(0, 5);
		}
		request.put("newsList", newsList);
		
		
		String sql="from TShipin where del='no' order by shipinCishu desc";
		List shipinList=shipinDAO.getHibernateTemplate().find(sql);
		if(shipinList.size()>10)
		{
			shipinList=shipinList.subList(0, 10);
		}
		request.put("shipinList", shipinList);
		
		String sql2="from TShipin where del='no' and filePath is not null order by shipinCishu desc";
		List shipinList2=shipinDAO.getHibernateTemplate().find(sql2);
		if(shipinList2.size()>10)
		{
			shipinList2=shipinList2.subList(0, 10);
		}
		request.put("shipinList2", shipinList2);
		
		return ActionSupport.SUCCESS;
	}

	

	public TNewsDAO getNewsDAO()
	{
		return newsDAO;
	}

	public void setNewsDAO(TNewsDAO newsDAO)
	{
		this.newsDAO = newsDAO;
	}
	public TShipinDAO getShipinDAO()
	{
		return shipinDAO;
	}
	public void setShipinDAO(TShipinDAO shipinDAO)
	{
		this.shipinDAO = shipinDAO;
	}
}
