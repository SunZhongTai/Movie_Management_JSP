package Upload;

import java.sql.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
     
    // 上传文件存储目录
    private static final String UPLOAD_DIRECTORY = "upload";
 
    // 上传配置
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
 
    //

    
    /**
     * 上传数据及保存文件
     */
    protected void doPost(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
		   		    	
        // 检测是否为多媒体上传
        if (!ServletFileUpload.isMultipartContent(request)) {
            // 如果不是则停止
            PrintWriter writer = response.getWriter();
            writer.println("Error: 表单必须包含 enctype=multipart/form-data");
            writer.flush();
            return;
        }                         

        //
        String  moviename=null;
        String  leixing=null;
        String  daoyan=null;
        String  diqu=null;
        String  info=null;
        String filePath=null;
        // 配置上传参数
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // 设置内存临界值 - 超过后将产生临时文件并存储于临时目录中
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // 设置临时存储目录
        factory.setRepository(new File(System.getProperty("java.io.tmpdir"))); 
        ServletFileUpload upload = new ServletFileUpload(factory); 
             
        // 设置最大文件上传值
        upload.setFileSizeMax(MAX_FILE_SIZE);         
        // 设置最大请求值 (包含文件和表单数据)
        upload.setSizeMax(MAX_REQUEST_SIZE);        
        // 中文处理
        upload.setHeaderEncoding("UTF-8"); 
        // 构造临时路径来存储上传的文件
        // 这个路径相对当前应用的目录
        //String uploadPath = getServletContext().getRealPath("./") + File.separator + UPLOAD_DIRECTORY;
        String uploadPath ="E:"+File.separator+"my-eclipse"+File.separator+"myeclipse-workspace"+File.separator+"Dazuoye"+File.separator+UPLOAD_DIRECTORY;        
        // 如果目录不存在则创建
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }
 
        try {
            // 解析请求的内容提取文件数据
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
            
            //非文件
            Iterator iter = formItems.iterator();
           while(iter.hasNext()){              
               FileItem item = (FileItem)iter.next();
              if(item.isFormField()){  //此处是判断非文件域，即不是<input type="file"/>的标签
                  String name=item.getFieldName();  //获取form表单中name的id
                 if("moviename".equals(name))  
                	 moviename=item.getString("utf-8"); 
                 //item是指定id的value值，此处用      item.getString("utf-8")是把item用utf-8解析，根据你的需要可以用其他的，如：gbk；
                  else if("leixing".equals(name))
                	  leixing=item.getString("utf-8");
                  else if("daoyan".equals(name))
                	  daoyan=item.getString("utf-8");
                  else if("diqu".equals(name))
                	  diqu=item.getString("utf-8");
                  else if("info".equals(name))
                	  info=item.getString("utf-8");
              }
           }
            //
           System.out.println(moviename+"  "+leixing+"      "+info);
            //
           
           //文件
            if (formItems != null && formItems.size() > 0) {
                // 迭代表单数据
                for (FileItem item : formItems) {
                    // 处理不在表单中的字段
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        filePath = uploadPath + File.separator+fileName;                      
                        File storeFile = new File(filePath);
                        filePath=filePath.replace("\\", "\\\\");
                        // 在控制台输出文件的上传路径
                        System.out.println(filePath);
                        // 保存文件到硬盘s
                        item.write(storeFile);
                        request.setAttribute("message","文件上传成功!");                                            
                    }
                }
            }
            
            //插入数据库
        	Connection con=null;
    		Statement stmt=null;
       try{
    		Class.forName("com.mysql.jdbc.Driver");
    		String url="jdbc:mysql://localhost:3306/dazuoye?useUnicode=true&characterEncoding=gbk";
    		con=DriverManager.getConnection(url,"root","123456");
    		stmt=con.createStatement();
    		String sql="insert into movie_info values('"+moviename+"','"+leixing+"','"+daoyan+"' ,'"+diqu+"','"+info+"','"+filePath+"')";
    		stmt.executeUpdate(sql);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				stmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		}
    		
            
            response.sendRedirect("http://localhost:8080/Dazuoye/glindex.jsp");
            //getServletContext().getRequestDispatcher("http://localhost:8080/Dazuoye/glindex.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("message","错误信息: " + ex.getMessage());
        }    
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
    }
}