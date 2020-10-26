package com.model;

import java.util.Date;

/**
 * TGonggao generated by MyEclipse Persistence Tools
 */

public class TGonggao implements java.io.Serializable
{

	// Fields

	private Integer gonggaoId;

	private String gonggaoTitle;

	private String gonggaoContent;

	private String gonggaoData;

	private String gonggaoFabuzhe;
	
	private String gonggaoDel;

	private String gonggaoOne1;

	private String gonggaoOne2;

	private String gonggaoOne3;

	private String gonggaoOne4;

	private Date gonggaoOne5;

	private Date gonggaoOne6;

	private Integer gonggaoOne7;

	private Integer gonggaoOne8;

	// Constructors

	/** default constructor */
	public TGonggao()
	{
	}

	/** full constructor */
	public TGonggao(String gonggaoTitle, String gonggaoContent,
			Date gonggaoData, String gonggaoFabuzhe, String gonggaoOne1,
			String gonggaoOne2, String gonggaoOne3, String gonggaoOne4,
			Date gonggaoOne5, Date gonggaoOne6, Integer gonggaoOne7,
			Integer gonggaoOne8)
	{
		this.gonggaoTitle = gonggaoTitle;
		this.gonggaoContent = gonggaoContent;
		this.gonggaoFabuzhe = gonggaoFabuzhe;
		this.gonggaoOne1 = gonggaoOne1;
		this.gonggaoOne2 = gonggaoOne2;
		this.gonggaoOne3 = gonggaoOne3;
		this.gonggaoOne4 = gonggaoOne4;
		this.gonggaoOne5 = gonggaoOne5;
		this.gonggaoOne6 = gonggaoOne6;
		this.gonggaoOne7 = gonggaoOne7;
		this.gonggaoOne8 = gonggaoOne8;
	}

	// Property accessors

	public Integer getGonggaoId()
	{
		return this.gonggaoId;
	}

	public void setGonggaoId(Integer gonggaoId)
	{
		this.gonggaoId = gonggaoId;
	}

	public String getGonggaoTitle()
	{
		return this.gonggaoTitle;
	}

	public void setGonggaoTitle(String gonggaoTitle)
	{
		this.gonggaoTitle = gonggaoTitle;
	}

	public String getGonggaoContent()
	{
		return this.gonggaoContent;
	}

	public void setGonggaoContent(String gonggaoContent)
	{
		this.gonggaoContent = gonggaoContent;
	}


	public String getGonggaoData()
	{
		return gonggaoData;
	}

	public void setGonggaoData(String gonggaoData)
	{
		this.gonggaoData = gonggaoData;
	}

	public String getGonggaoFabuzhe()
	{
		return this.gonggaoFabuzhe;
	}

	public void setGonggaoFabuzhe(String gonggaoFabuzhe)
	{
		this.gonggaoFabuzhe = gonggaoFabuzhe;
	}

	public String getGonggaoOne1()
	{
		return this.gonggaoOne1;
	}

	public void setGonggaoOne1(String gonggaoOne1)
	{
		this.gonggaoOne1 = gonggaoOne1;
	}

	public String getGonggaoOne2()
	{
		return this.gonggaoOne2;
	}

	public void setGonggaoOne2(String gonggaoOne2)
	{
		this.gonggaoOne2 = gonggaoOne2;
	}

	public String getGonggaoOne3()
	{
		return this.gonggaoOne3;
	}

	public void setGonggaoOne3(String gonggaoOne3)
	{
		this.gonggaoOne3 = gonggaoOne3;
	}

	public String getGonggaoOne4()
	{
		return this.gonggaoOne4;
	}

	public void setGonggaoOne4(String gonggaoOne4)
	{
		this.gonggaoOne4 = gonggaoOne4;
	}

	public Date getGonggaoOne5()
	{
		return this.gonggaoOne5;
	}

	public void setGonggaoOne5(Date gonggaoOne5)
	{
		this.gonggaoOne5 = gonggaoOne5;
	}

	public Date getGonggaoOne6()
	{
		return this.gonggaoOne6;
	}

	public void setGonggaoOne6(Date gonggaoOne6)
	{
		this.gonggaoOne6 = gonggaoOne6;
	}

	public Integer getGonggaoOne7()
	{
		return this.gonggaoOne7;
	}

	public void setGonggaoOne7(Integer gonggaoOne7)
	{
		this.gonggaoOne7 = gonggaoOne7;
	}

	public Integer getGonggaoOne8()
	{
		return this.gonggaoOne8;
	}

	public void setGonggaoOne8(Integer gonggaoOne8)
	{
		this.gonggaoOne8 = gonggaoOne8;
	}

	public String getGonggaoDel()
	{
		return gonggaoDel;
	}

	public void setGonggaoDel(String gonggaoDel)
	{
		this.gonggaoDel = gonggaoDel;
	}

}