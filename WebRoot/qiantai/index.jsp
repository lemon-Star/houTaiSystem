<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <LINK href="<%=path %>/css/css.css" type=text/css rel=stylesheet>
		 <STYLE type=text/css>
			.ycbt
			 {
				BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-COLOR: #EAF2EF; BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
			 }
			.xsbt 
			 {
				BORDER-RIGHT: #fff 1px solid; BORDER-TOP: #fff 1px solid; PADDING-LEFT: 1.8em; BACKGROUND-IMAGE: url(<%=path %>/images/head1.gif); BORDER-LEFT: #fff 1px solid; PADDING-TOP: 7px; BORDER-BOTTOM: #fff 1px solid; HEIGHT: 20px
			 }
			.xsnr 
			 {
				DISPLAY: block
			 }
			.ycnr 
			 {
				DISPLAY: none
			 }
         </STYLE>
         <script type="text/javascript" src="<%=path %>/js/public.js"></script>
         <script type="text/javascript">
            function toupiao()
	        {
                 var toupiaoName;
				 var j=document.toupiaoForm.toupiaoName;
       			 for(i=0;i<j.length;i++)
                 {
    				if(j[i].checked==true)
   				    {
                      toupiaoName=j[i].value;
                    }
                 }
	             var url="<%=path %>/toupiaoAdd.action?toupiaoName="+toupiaoName;
	             //alert(url);
                 var n="dd";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
	        }
	        
	        function dianbo(shipinPath)
	        {
	             <s:if test="#session.user==null">
                     alert("请先登录");
                 </s:if>
                 
                 <s:else>
				     var targetWinUrl="<%=path %>/qiantai/shipin/shipindianbo.jsp?shipinPath="+shipinPath;
					 var targetWinName="newWin";
					 var features="width="+500+" ,height="+400+" ,toolbar=no, top=200, left=220, menubar=no, scrollbars=no, resizable=no,location=no, status=no"
					 var new_win=window.open(targetWinUrl,targetWinName,features);
                 </s:else>
	        }
	        
	        function down1(fujianPath,fujianYuashiMing)
	        {
	             <s:if test="#session.user==null">
                     alert("请先登录");
                 </s:if>
                 <s:else>
				     var url="<%=path %>/common/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
			         url=encodeURI(url); 
	                 url=encodeURI(url); 
	                 window.open(url,"_self");
                 </s:else>
	        }
         </script>
  </head>
  
  <BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>
	<div class="wrap"> 
		<TABLE id=toplogin cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align=left>
						<DIV class=jstime style="FLOAT: left; WIDTH: 25%">
							<%--【<a href="userLogin.jsp">会员登录</a>】
							【<a href="userReg.jsp">免费注册</a>】--%>
						</DIV>
						<DIV class=jstime style="FLOAT: right; WIDTH: 45%; TEXT-ALIGN: right">
							<SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;星期'+'日一二三四五六'.charAt(new Date().getDay());",1000)</SCRIPT>
							<SPAN id=clock></SPAN>&nbsp;&nbsp;
							<A href="javascript:javascript:window.external.AddFavorite('http://localhost:8080',' ');">加入收藏</A>
							<A onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://localhost:8080/');" href="http://localhost/">设为首页</A>
						</DIV>
					</TD>
				</TR>
		</TABLE>
		
		<TABLE id=header cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD>
						<DIV class=ad id=banner>
							<img src="<%=path %>/images/111.JPG" border=0 width="950" height="90">
						</DIV>
					</TD>
				</TR>
		</TABLE>
		
		
		<TABLE id=guide cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD align="center">
						<jsp:include flush="true" page="/qiantai/inc/inc.jsp"></jsp:include>
					</TD>
				</TR>
		</TABLE>

        <TABLE class=MainTable cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
				    <TD class=Side vAlign=top align=left width="37%" height=160>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" align="center" border=0 height="166">
								<TR>
									<TD class=head id=tb1_bt1  width="100%" height="30px">
										<SPAN class=TAG>新闻资讯</SPAN>
									</TD>
								</TR>
								<TR>
									<TD class="middle" align="left" colspan="2" valign="middle">
										<TABLE class=xsnr id=tb1_nr1 cellSpacing=0 cellPadding=0 width="100%" border=0 height="120">
												<s:iterator value="#request.newsList" id="news">
												<TR>
													<TD align="left">
														<a href="<%=path %>/newsDetailQian.action?newsId=<s:property value="#news.newsId"/>"><s:property value="#news.newsTitle"/></a>
													</TD>
													<TD align="right">
													    <s:property value="#news.newsDate"/>
													</TD>
												</TR>    
												</s:iterator>
										</TABLE>
									</TD>
								</TR>
						</TABLE>
					</TD>
					<TD class=Side vAlign=top align=right width="1%"></TD>
					<TD class=Side vAlign=top align=left width="37%" height=160>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="267" align=center border=0 height="167">
								<TR>
									<TD class=head id=tb1_bt1  width="100%" height="30px">
										<SPAN class=TAG>网友投票</SPAN>
									</TD>
								</TR>
								<TR>
									<TD class="middle" align="left" colspan="2">
										<form name="toupiaoForm" action="<%=path %>/toupiaoAdd.Action" method="post">
										<TABLE class=xsnr id=tb1_nr1 cellSpacing=0 cellPadding=0 width="261" border=0 height="100">
											<TR>
												<TD>
												     你是从哪儿得知本站的？
												</TD>
											</TR>
											<TR>
												<TD>
												   <input type="radio" name="toupiaoName" value="pengyou" checked="checked"/>
												   &nbsp;&nbsp;&nbsp;朋友介绍
												</TD>
											</TR>
											<TR>
												<TD>
												   <input type="radio" name="toupiaoName" value="menhu"/>
												   &nbsp;&nbsp;&nbsp;门户网站的搜索引擎
												</TD>
											</TR>
											<TR>
												<TD>
												   <input type="radio" name="toupiaoName" value="googlebaidu"/>
												   &nbsp;&nbsp;&nbsp;Google或百度搜索
												</TD>
											</TR>
											<TR>
												<TD>
												   <input type="radio" name="toupiaoName" value="qitazhan"/>
												   &nbsp;&nbsp;&nbsp;别的网站上的链接
												   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												   <a href="#" onclick="toupiao()">投票</a>
												</TD>
											</TR>
										</TABLE>
										</form>
									</TD>
								</TR>
						</TABLE>
					</TD>
					<TD class=Side vAlign=top align=right width="1%"></TD>
					<TD class=Side vAlign=top align=right width="24%" height="160">
						<TABLE width="177" height="166" border=0 cellPadding=0 cellSpacing=0 class=dragTable>
								<TR>
									<TD class=head width="100%" height="30px">
										<SPAN class=TAG>站内公告</SPAN>
									</TD>
								</TR>
								<TR>
									<TD class=middle align=left>
										<!--<MARQUEE onmouseover=if(document.all!=null){this.stop()} onmouseout=if(document.all!=null){this.start()} scrollAmount=1 scrollDelay=1 direction=up height=150>-->
											<s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
										<!--</MARQUEE>-->
									</TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
		
		
		
         
        <TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<tr><td colspan="5" height="3px"></td></tr>
				<TR>
				<TD valign="bottom" style="padding-top: 6px">
				<marquee scrollamount=1 scrolldelay=3 valign="bottom" behavior="scroll">
				<s:iterator value="#request.shipinList2" id="shipin">
				 <a href="<%=path %>/shipinDetailQian.action?shipinId=<s:property value="#shipin.shipinId"/>"><img border="0" src="<%=path %><s:property value="#shipin.filePath"/>" width="130px"  height="130px"></a>
			</s:iterator>
</marquee>
				
				</TD><td width="5px">&nbsp;</td>
					<TD class=Main vAlign=top height=60>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<SPAN class=TAG>电影搜索</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
								<TR align="left">
									<TD>
									    <form action="<%=path %>/shipinSearch.action" method="get" name="d">
									        &nbsp;&nbsp;&nbsp;
									        关键字：
									       &nbsp; &nbsp;&nbsp; &nbsp;  &nbsp; &nbsp;<input type="text" name="key">&nbsp;&nbsp;<br/>
									        &nbsp; &nbsp; &nbsp; &nbsp; <SELECT name="mingcheng_daoyan_zhuyan">
									             <option value="请选择">--请选择--</option>
									             <option value="名称">名称</option>
									             <option value="主演">主演</option>
									             <option value="导演">导演</option>
									        </SELECT><br/>
									        &nbsp; &nbsp; &nbsp; &nbsp; <SELECT name="shipinLeixing">
									             <option value="请选择">--请选择--</option>
									             <option value="动作片">动作片</option>
									             <option value="爱情片">爱情片</option>
									             <option value="恐怖片">恐怖片</option>
									             <option value="其他">其他</option>
									        </SELECT><br/>
									        &nbsp; &nbsp; &nbsp; &nbsp; <input type="submit" value="搜索"><br>
									    </form>
									</TD>
								</TR>
								<TR align="left">
									<TD height="5"></TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
        
		<TABLE class=MainTable style="MARGIN-TOP: 0px" cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TR>
					<TD class=Main vAlign=top height=100>
						<TABLE class=dragTable cellSpacing=0 cellPadding=0 width="100%" border=0>
								<TR>
									<TD class=head>
										<SPAN class=TAG>电影排行榜</SPAN>
									</TD>
								</TR>
								<TR align="left">
									<TD class=middle>
									    <table border="0">
									        <tr align="center" bgcolor="#FAFAF1" height="22">
												<td width="120">电影名称</td>
												<td width="120">主演</td>
												<td width="120">导演</td>
												<td width="120">类型</td>
												<td width="120">播放时间</td>
												<td width="120">浏览次数</td>
												<td width="120">发布时间</td>
												<td width="120">操作</td>
									        </tr>	
							                <s:iterator value="#request.shipinList" id="shipin">
							                <tr>
							                    <td align="center">
							                        <a href="<%=path %>/shipinDetailQian.action?shipinId=<s:property value="#shipin.shipinId"/>"><s:property value="#shipin.shipinName"/></a>
							                    </td>
							                    <td align="center">
							                       <s:property value="#shipin.shipinZhuyan"/>
							                    </td>
							                    <td align="center">
							                       <s:property value="#shipin.shipinDaoyan" />
							                    </td>
							                    <td align="center">
							                       <s:property value="#shipin.shipinLeixing" />
							                    </td>
							                   <td align="center">
							                      <s:property value="#shipin.shipinBofangshijian"/>
							                    </td>
							                    <td align="center">
							                      <s:property value="#shipin.shipinCishu"/>
							                    </td>
							                    <td align="center">
							                        <s:property value="#shipin.shipinFabushijian"/>
							                    </td>
							                    <td align="center">
							                        <a href="#" onclick="dianbo('<s:property value="#shipin.shipinPath"/>')">点播</a>
							                        <a href="#" onclick='down1("<s:property value="#shipin.shipinPath"/>","<s:property value="#shipin.shipinYuanshiming"/>")'>下载</a>
							                    </td>
							                </tr>
							                </s:iterator>
							            </table>
									</TD>
								</TR>
						</TABLE>
					</TD>
				</TR>
		</TABLE>
        
        <!-- foot -->
        <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
        <!-- foot -->
    </div>
  </BODY>
</html>
