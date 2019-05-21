package edu.uc.action;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.liuvei.common.PagerItem;
import com.liuvei.common.SysFun;

import edu.uc.bean.HeadLine;
import edu.uc.service.HeadLineService;

@Component("HeadLineAction")
@Scope("prototype")
public class HeadLineAction extends CrudAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5728095598250038085L;
	
	@Autowired
	private HeadLineService headLineService;
	
	private String id;
	private String lineName;
	private String lineLink;
	//private String lineImg;
	private File headImg;
	private String headImgContentType;
	private String headImgFileName;
	
		

	public File getHeadImg() {
		return headImg;
	}

	public void setHeadImg(File headImg) {
		this.headImg = headImg;
	}

	public String getHeadImgContentType() {
		return headImgContentType;
	}

	public void setHeadImgContentType(String headImgContentType) {
		this.headImgContentType = headImgContentType;
	}

	public String getHeadImgFileName() {
		return headImgFileName;
	}

	public void setHeadImgFileName(String headImgFileName) {
		this.headImgFileName = headImgFileName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLineName() {
		return lineName;
	}

	public void setLineName(String lineName) {
		this.lineName = lineName;
	}

	public String getLineLink() {
		return lineLink;
	}

	public void setLineLink(String lineLink) {
		this.lineLink = lineLink;
	}
	
	
	


	@Override
	public String list() {
		// TODO Auto-generated method stub
		List<HeadLine> dataList=new ArrayList<HeadLine>();
		PagerItem pagerItem=new PagerItem();
		pagerItem.parsePageSize(pageSize);
		pagerItem.parsePageNum(pageNum);
		
		Long count=headLineService.count();
		pagerItem.changeRowCount(count);
		
		dataList=headLineService.pager(pagerItem.getPageNum(), pagerItem.getPageSize());
		pagerItem.changeUrl(SysFun.generalUrl(requestURI, queryString));
		
		request.put("DataList", dataList);
		request.put("pagerItem", pagerItem);
		
		
		return "list";
	}

	@Override
	public String listDeal() {
		// TODO Auto-generated method stub
		request.put("lineName",lineName);
		
		List<HeadLine> dataList=null;
		PagerItem pagerItem=new PagerItem();
		pagerItem.parsePageNum(pageNum);
		pagerItem.parsePageSize(pageSize);
		Long count=0L;
		if(!SysFun.isNullOrEmpty(lineName))
		{
			count=headLineService.countByName(lineName);
			pagerItem.changeRowCount(count);
			dataList=headLineService.pagerByName(lineName, pagerItem.getPageNum(), pagerItem.getPageSize());
		}
		else
		{
			count=headLineService.count();
			pagerItem.changeRowCount(count);
			dataList=headLineService.pager(pagerItem.getPageNum(), pagerItem.getPageSize());
		}
		pagerItem.changeUrl(SysFun.generalUrl(requestURI, queryString));
		
		request.put("DataList", dataList);
		request.put("pagerItem", pagerItem);
		
		return "list";
	}

	@Override
	public String insert() {
		// TODO Auto-generated method stub
		return "insert";
	}

	@Override
	public String insertDeal() {
		// TODO Auto-generated method stub
		request.put("lineName", lineName);
		request.put("lineLink", lineLink);
		request.put("headImg",headImg);
		String vMSg="";
		if(SysFun.isNullOrEmpty(lineName)) {
			vMSg+="头条名不能为空";
		}
		if(SysFun.isNullOrEmpty(lineLink)) {
			vMSg+="头条链接不能为空";
		}
		if(headImg==null) {
			vMSg+="头条图片不能为空";
		}
		if(!SysFun.isNullOrEmpty(vMSg)) {
			request.put("msg", vMSg);
			System.out.println(vMSg);
			return "insert";
		}
		//1、保存头像文件到服务器中
        String filePath = ServletActionContext.getServletContext().getRealPath("/upload/head/");
        String fileName = UUID.randomUUID().toString().replaceAll("-", "") + headImgFileName.substring(headImgFileName.lastIndexOf("."));
        try {
       	 FileUtils.copyFile(headImg, new File(filePath, fileName));
			//System.out.println("filePath"+filePath+"\\"+fileName);
		} catch (IOException e) {
				// TODO Auto-generated catch block
			e.printStackTrace();
		}
        //System.out.println(fileName+"fileName");
        String headPicPath = "/upload/head/"+fileName;
        //System.out.println(headPicPath+"headPicPath");
		HeadLine bean=new HeadLine();
		bean.setLineName(lineName);
		bean.setLineLink(lineLink);
		bean.setLineImg(headPicPath);
		Long result=0L;
		try {
			result=headLineService.insert(bean);
			System.out.println(result);
		}
		catch(Exception e) {
			vMSg+="添加失败，原因："+e.getMessage();
		}
		if(result>0) {
			return "go_preload";
		}
		else {
			request.put("msg", vMSg);
			return "insert";
		}
	}

	@Override
	public String delete() {
		// TODO Auto-generated method stub
		return "delete";
	}

	@Override
	public String deleteDeal() {
		// TODO Auto-generated method stub
		if(!SysFun.isNullOrEmpty(id)) {
			Long iId=SysFun.parseLong(id);
			HeadLine headLine = headLineService.load(iId);
			String filePath = ServletActionContext.getServletContext().getRealPath("/");
			new File(filePath+headLine.getLineImg()).delete();
			Long result=headLineService.delete(iId);
			if(result>0) {
				return "go_ok";
			}
		}
		
		return "go_ok";
	}

	@Override
	public String update() {
		// TODO Auto-generated method stub
		System.out.println("updateView.");
		
		//javax.servlet.http.HttpSession session=request.getSession();
		//javax.servlet.ServletContext application=request.getServletContext();
		
		//String vId=request.getParameter("id");
		if(!SysFun.isNullOrEmpty(id)) {
			Long iId=SysFun.parseLong(id);
			HeadLine bean=headLineService.load(iId);
			
			if(bean!=null) {
				
				request.put("Id", bean.getId());
				request.put("lineName", bean.getLineName());
				request.put("lineLink", bean.getLineLink());
				//request.put("lineImg", bean.getLineImg());
				return "update";
				
			}
			
		}
		
		return "go_preload";
	}

	@Override
	public String updateDeal() {
		// TODO Auto-generated method stub
		request.put("lineName", lineName);
		request.put("lineLink", lineLink);
		//request.put("headImg", headImg);
		
		String vMsg="";
		if(SysFun.isNullOrEmpty(lineName)) {
			vMsg+="头条名不能为空";
		}
		if(SysFun.isNullOrEmpty(lineLink)) {
			vMsg+="头条链接不能为空";
		}
		
		if(!SysFun.isNullOrEmpty(vMsg)) {
			request.put("msg", vMsg);
			return "update";
		}
		
		Long iId=SysFun.parseLong(id);
		HeadLine bean=headLineService.load(iId);
		if(bean==null) {
			vMsg+="记录不存在";
		}
		if(!SysFun.isNullOrEmpty(vMsg)) {
			
			request.put("msg", vMsg);
			return "update";
		}
		
		bean.setLineName(lineName);
		bean.setLineLink(lineLink);
		//bean.setLineImg(headImg.getAbsolutePath());
		
		Long result=0L;
		try {
			result=headLineService.update(bean);
			System.out.println("111");
		}
		catch (Exception e) {
			// TODO: handle exception
			vMsg+="修改失败，原因："+e.getMessage();
		}
		
		if(result>0) {
			return "go_preload";
		}
		else {
			request.put("msg", vMsg);
			return "update";
		}
	}

	@Override
	public String detail() {
		// TODO Auto-generated method stub
		System.out.println("detailView.");
		//javax.servlet.http.HttpSession session=request.getSession();
		//javax.servlet.ServletContext application=request.getServletContext();
		
		//String vId=request.getParameter("id");
		if(!SysFun.isNullOrEmpty(id)) {
			Long iId=SysFun.parseLong(id);
			HeadLine bean=headLineService.load(iId);
			if(bean!=null) {
				request.put("bean", bean);
				return "detail";
				
			}
		}
		return "detail";
	}

	@Override
	public String detailDeal() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
