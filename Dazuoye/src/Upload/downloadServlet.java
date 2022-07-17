package Upload;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

/**
 * Servlet implementation class downloadServlet
 */
@WebServlet("/downloadServlet")
public class downloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String path;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public downloadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		path = request.getParameter("fileurl");
		System.out.println("path="+path);
		if (path != null) {
			download(response);
		}
	}
	
	public void download(HttpServletResponse response) throws IOException {
		//ȥ��·����ʣ���ļ�����
		String realPath = path.substring(path.lastIndexOf("/") + 1);
		// ����������������صķ�����ȡ����Դ���Դ��ֱ�����������
		response.setHeader("content-disposition", "attachment; filename="
				+ URLEncoder.encode(realPath, "utf-8"));
		// ��ȡ��Դ�����档
		FileInputStream fis = new FileInputStream(path);
		int len = 0;
		byte[] buf = new byte[1024];
		while ((len = fis.read(buf)) != -1) {
			response.getOutputStream().write(buf, 0, len);
		}
		fis.close();
		response.sendRedirect("/fund/manager/MCode.jsp?ID=admin");
	}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
