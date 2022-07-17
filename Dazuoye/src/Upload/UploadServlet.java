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
     
    // �ϴ��ļ��洢Ŀ¼
    private static final String UPLOAD_DIRECTORY = "upload";
 
    // �ϴ�����
    private static final int MEMORY_THRESHOLD   = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE      = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE   = 1024 * 1024 * 50; // 50MB
 
    //

    
    /**
     * �ϴ����ݼ������ļ�
     */
    protected void doPost(HttpServletRequest request,
        HttpServletResponse response) throws ServletException, IOException {
		   		    	
        // ����Ƿ�Ϊ��ý���ϴ�
        if (!ServletFileUpload.isMultipartContent(request)) {
            // ���������ֹͣ
            PrintWriter writer = response.getWriter();
            writer.println("Error: ��������� enctype=multipart/form-data");
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
        // �����ϴ�����
        DiskFileItemFactory factory = new DiskFileItemFactory();
        // �����ڴ��ٽ�ֵ - �����󽫲�����ʱ�ļ����洢����ʱĿ¼��
        factory.setSizeThreshold(MEMORY_THRESHOLD);
        // ������ʱ�洢Ŀ¼
        factory.setRepository(new File(System.getProperty("java.io.tmpdir"))); 
        ServletFileUpload upload = new ServletFileUpload(factory); 
             
        // ��������ļ��ϴ�ֵ
        upload.setFileSizeMax(MAX_FILE_SIZE);         
        // �����������ֵ (�����ļ��ͱ�����)
        upload.setSizeMax(MAX_REQUEST_SIZE);        
        // ���Ĵ���
        upload.setHeaderEncoding("UTF-8"); 
        // ������ʱ·�����洢�ϴ����ļ�
        // ���·����Ե�ǰӦ�õ�Ŀ¼
        //String uploadPath = getServletContext().getRealPath("./") + File.separator + UPLOAD_DIRECTORY;
        String uploadPath ="E:"+File.separator+"my-eclipse"+File.separator+"myeclipse-workspace"+File.separator+"Dazuoye"+File.separator+UPLOAD_DIRECTORY;        
        // ���Ŀ¼�������򴴽�
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }
 
        try {
            // ���������������ȡ�ļ�����
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
            
            //���ļ�
            Iterator iter = formItems.iterator();
           while(iter.hasNext()){              
               FileItem item = (FileItem)iter.next();
              if(item.isFormField()){  //�˴����жϷ��ļ��򣬼�����<input type="file"/>�ı�ǩ
                  String name=item.getFieldName();  //��ȡform����name��id
                 if("moviename".equals(name))  
                	 moviename=item.getString("utf-8"); 
                 //item��ָ��id��valueֵ���˴���      item.getString("utf-8")�ǰ�item��utf-8���������������Ҫ�����������ģ��磺gbk��
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
           
           //�ļ�
            if (formItems != null && formItems.size() > 0) {
                // ����������
                for (FileItem item : formItems) {
                    // �����ڱ��е��ֶ�
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        filePath = uploadPath + File.separator+fileName;                      
                        File storeFile = new File(filePath);
                        filePath=filePath.replace("\\", "\\\\");
                        // �ڿ���̨����ļ����ϴ�·��
                        System.out.println(filePath);
                        // �����ļ���Ӳ��s
                        item.write(storeFile);
                        request.setAttribute("message","�ļ��ϴ��ɹ�!");                                            
                    }
                }
            }
            
            //�������ݿ�
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
            request.setAttribute("message","������Ϣ: " + ex.getMessage());
        }    
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doPost(request, response);
    }
}