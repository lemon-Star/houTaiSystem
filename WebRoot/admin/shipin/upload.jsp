<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.upload.SmartUpload"%>
<%@ page import="java.io.File"%>
<%

	SmartUpload su = new SmartUpload();
	su.setEncoding("UTF-8");
	su.initialize(pageContext);
	su.setMaxFileSize(10000000);
	su.setTotalMaxFileSize(20000000);
	String allowFile = "doc,docx,xls,xlsx,txt,jpg,gif,rar,zip,pdf,pptx,ppt,wps,png";
	//su.setAllowedFilesList(allowFile);   
	String dynFolder = System.currentTimeMillis()+"";
	boolean sign = true;
	String uploadBlockName = "";
	
	String pg = this.getClass().getClassLoader().getResource("/").getPath();
	if(pg.indexOf("WEB-INF/classes/")!=-1){
		pg=pg.replace("WEB-INF/classes/","");
	}
	String filePath = "uploadimage/"+dynFolder;
	String path =pg+filePath;
	try {
		su.setDeniedFilesList("exe,bat,jsp,htm,html");
		su.upload();
		
		
		File fileDir = new File(path);
		if(!fileDir.exists()){
			fileDir.mkdirs();
		}
		int count = su.save(path);
		
		//将上传文件保存到指定目录  
	
		uploadBlockName = su.getFiles().getFile(0).getFileName();
		filePath = filePath+"/"+uploadBlockName;
		
		if(count<1){
			sign = false;
			fileDir.delete();//删除空目录
		}else{
			
		}
	} catch (Exception e) {
		e.printStackTrace();
		sign = false;
	}

	System.out.println("path:"+path);
	System.out.println("filePath:"+filePath);
	if (sign == true){
		out.println("<script>parent.uploadFileCallback('上传成功','true','"+filePath+"')</script>");
	} else {
		out.println("<script>parent.uploadFileCallback('上传失败,请上传以下类型的文件："+allowFile+"','false','"+uploadBlockName+"')</script>");
	}
%>

