package com.et59.cus.tools;

import java.io.*;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.struts2.ServletActionContext;

import com.et59.cus.action.BaseAction;
import com.opensymphony.xwork2.ActionSupport;


public class FileAction extends BaseAction{
	
	public static final int BUFFER_SIZE = 2 * 1024;
//	public File upload;
	public String upload;
	public String name;
	public List<String> names;
	public String uploadFileName;
	public String uploadContentType;
	public String savePath;
	public int chunk;
	public int chunks;
	public int id = -1;
	public String result;
	public File fileData;

	public File getFileData() {
		return fileData;
	}

	public void setFileData(File fileData) {
		this.fileData = fileData;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private void copy(File src, File dst) {
		InputStream in = null;
		OutputStream out = null;
		try {
			if (dst.exists()) {
				out = new BufferedOutputStream(new FileOutputStream(dst, true),
						BUFFER_SIZE);
			} else {
				out = new BufferedOutputStream(new FileOutputStream(dst),
						BUFFER_SIZE);
			}
			in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);

			byte[] buffer = new byte[BUFFER_SIZE];
			int len = 0;
			while ((len = in.read(buffer)) > 0) {
				out.write(buffer, 0, len);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (null != in) {
				try {
					in.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if (null != out) {
				try {
					out.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public String upload() throws Exception {
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);   
		System.out.println(isMultipart+"***************");
		DiskFileItemFactory factory = new DiskFileItemFactory();  
	    factory.setSizeThreshold(1024);  
	   ServletFileUpload upload = new ServletFileUpload(factory);  
	    upload.setHeaderEncoding("UTF-8");  
	    upload.setSizeMax(5 * 1024 * 1024 * 1024);// 设置附近大小  
	   
			                
//		List<FileItem> items = upload.parseRequest(request);  
//		               String newFileName = null;  
//		               for (FileItem item : items) {  
//		                   if (!item.isFormField()) {// 如果是文件类型  
//		                       name = newFileName;// 获得文件名  
//		                       if (name != null) {  
//		                           String nFname = newFileName;  
////		                            File savedFile = new File(uploadPath, nFname);  
////		                            item.write(savedFile);  
//		                        }  
//		                   } 
//		               }
//		FileItemIterator iter = upload.getItemIterator(request); 
//
//		while (iter.hasNext()) {   
//			                   FileItemStream item = iter.next();   
//			                   InputStream input = item.openStream();   
//		                   // Handle a form field.   
//			                    if(item.isFormField()){   
//		                        String fileName = item.getFieldName();  
//		                        System.out.println(fileName+"***************");
////			                        String value = Streams.asString(input);   
////			                       if("name".equals(fileName)){   
////			                            this.name = value;   
////			                       }else if("chunks".equals(fileName)){   
////			                           this.chunks = Integer.parseInt(value);   
////			                       }else if("chunk".equals(fileName)){   
////			                           this.chunk = Integer.parseInt(value);   
////			                       }else if("user".equals(fileName)){   
////			                            this.user = value;   
////			                        }else if("time".equals(fileName)){   
////			                            this.time = value;   
////			                       }   
//			                    }   
//		}
		
		String dstPath = ServletActionContext.getServletContext().getRealPath("")
				+ "\\" + this.getName();
//		String basePath = request.getScheme() + "://"
//		+ request.getServerName() + ":" + request.getServerPort()
//		+ request.getContextPath() + "/"+"intentionPicture/";
		File dstFile = new File(dstPath);

		// 文件已存在（上传了同名的文件）
		if (chunk == 0 && dstFile.exists()) {
			dstFile.delete();
			dstFile = new File(dstPath);
		}

		copy(this.fileData, dstFile);
		System.out.println("上传文件:" + uploadFileName + " 临时文件名：" + uploadContentType + " "
				+ chunk + " " + chunks);
		if (chunk == chunks - 1) {
			// 完成一整个文件;
		}
		return SUCCESS; 
	}

//	public String submit() {
//		String filePath = ServletActionContext.getServletContext().getRealPath(
//				this.getSavePath());
//		System.out.println("保存文件路径： " + filePath);
//		
//		HttpServletRequest request = ServletActionContext.getRequest();
//		
//		result =  "";
//		int count = Integer.parseInt(request.getParameter("uploader_count"));
//		for (int i = 0; i < count; i++) {
//			uploadFileName = request.getParameter("uploader_" + i + "_name");
//			name = request.getParameter("uploader_" + i + "_tmpname");
//			System.out.println(uploadFileName + " " + name);
//			try {
//				//do something with file;
//				result += uploadFileName + "导入完成. <br />";  
//			} catch(Exception e) {
//				result += uploadFileName + "导入失败:" + e.getMessage() + ". <br />";
//				e.printStackTrace();
//			}
//		}
//		return SUCCESS;
//	}

	
	public void setId(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setNames(List<String> names) {
		this.names = names;
	}

	public List<String> getNames() {
		return names;
	}

//	public File getUpload() {
//		return upload;
//	}
//
//	public void setUpload(File upload) {
//		this.upload = upload;
//	}
	

	public String getUploadFileName() {
		return uploadFileName;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadContentType() {
		return uploadContentType;
	}

	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public int getChunk() {
		return chunk;
	}

	public void setChunk(int chunk) {
		this.chunk = chunk;
	}

	public int getChunks() {
		return chunks;
	}

	public void setChunks(int chunks) {
		this.chunks = chunks;
	}


	public void setResult(String result) {
		this.result = result;
	}

	public String getResult() {
		return result;
	}

}
