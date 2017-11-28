package com.travel.controller;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.alibaba.fastjson.JSON;
  

/** 
* @ClassName: UtilController 
* @Description: 工具类
* @author zhoukai 
* @date 2017年11月2日 下午8:44:16 
*  
*/
/** 
* @ClassName: UtilController 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author zhoukai 
* @date 2017年11月20日 上午12:08:50 
*  
*/
@Controller  
@RequestMapping("util")  
public class UtilController {  
	/*private static Logger log=LoggerFactory.getLogger(MenuController.class);*/
     
    
    /** 
    * @Title: upload 
    * @Description: 图片上传 
    * @param @param request
    * @param @return    设定文件 
    * @return String    返回类型 
    * @throws 
    */
	@RequestMapping("/upLoad") 
	@ResponseBody 
	public String upLoad(HttpServletRequest request, HttpServletResponse response) { 
		//创建一个通用的多部分解析器 
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext()); 
		Map<String,Object> map = new HashMap<String,Object>(); 
		//判断 request 是否有文件上传,即多部分请求 
		if(multipartResolver.isMultipart(request)){ 
			//转换成多部分request 
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request; 
			//取得request中的所有文件名 
			Iterator<String> iter = multiRequest.getFileNames(); 
			List<String> data = new ArrayList<String>(); 
			while(iter.hasNext()){ 
				//取得上传文件 
				MultipartFile file = multiRequest.getFile(iter.next()); 
				if(file != null){ 
					//取得当前上传文件的文件名称
					String myFileName = file.getOriginalFilename(); 
					//如果名称不为“”,说明该文件存在，否则说明该文件不存在 
					if(myFileName.trim() !=""){ 
						System.out.println(myFileName); 
						//重命名上传后的文件名 
						/*String fileName = "upload/" + file.getOriginalFilename(); */
						String fileName = "upload/" + System.currentTimeMillis() + myFileName.substring(myFileName.lastIndexOf("."), myFileName.length());
						//定义上传路径 
						String appRoot = request.getSession().getServletContext().getRealPath("") + File.separator;
						System.out.println(appRoot);
						/*String appRoot = "E:/workspace/Travel/src/main/webapp/";*/
						String path = appRoot + fileName; 
						File localFile = new File(path); 
						if(!localFile.exists()) { 
							localFile.mkdirs(); 
							} try { 
								file.transferTo(localFile); 
								data.add(fileName);
								} catch (Exception e) { 
									e.printStackTrace(); 
									map.put("errno", 1); 
									map.put("data", data); 
									String editor = JSON.toJSONString(map);
									return editor; 
								} 
							} 
						} 
					} 
			map.put("errno", 0); 
			map.put("data", data); 
			} 
		String editor = JSON.toJSONString(map);
		return editor; 
	}
	
  	
  	/**
  	* @Title: heFengweather 
  	* @Description: 调用和风天气api获取数据
  	* @param @param request
  	* @param @return
  	* @param @throws Exception    设定文件 
  	* @return String    返回类型 
  	* @throws
  	 */
  	@RequestMapping("/heFengweather") 
	@ResponseBody 
	public String heFengweather(HttpServletRequest request) throws Exception{ 
	  	Map<String,Object> map = new HashMap<String,Object>(); 
	  	//参数url化
	  	String city = java.net.URLEncoder.encode("南京", "utf-8");
	  	String key = java.net.URLEncoder.encode("e531c40da93641c49f1d70fd3212fe50", "utf-8");
	  	//拼地址
	  	String apiUrl = String.format("https://free-api.heweather.com/s6/weather/forecast?location=%s&key=%s",city,key);
	  	//开始请求
	  	URL url= new URL(apiUrl);
	  	URLConnection open = url.openConnection();
	  	InputStream input = open.getInputStream();
	  	//这里转换为String，带上包名，怕引错包
	  	String result = org.apache.commons.io.IOUtils.toString(input,"utf-8");
	  	//输出
	  	System.out.println(result);
	    map.put("weather", result);
		return JSON.toJSONString(map); 
	}
  	
  	
  
    
}  