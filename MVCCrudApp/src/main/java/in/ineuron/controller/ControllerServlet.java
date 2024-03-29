package in.ineuron.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.ineuron.dto.Student;
import in.ineuron.service.IStudentService;
import in.ineuron.servicefactory.StudentServiceFactory;

@WebServlet("/controller/*")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		RequestDispatcher rd = null;
		IStudentService stdService = StudentServiceFactory.getStudentService();
		System.out.println("Request URI:" + request.getRequestURI());
		System.out.println("Path Info:" + request.getPathInfo());
		if (request.getRequestURI().endsWith("addform")) {
			String sage = request.getParameter("sage");
			String sname = request.getParameter("sname");
			String saddr = request.getParameter("saddr");
			Student student = new Student();
			student.setSage((Integer.parseInt(sage)));
			student.setSname(sname);
			student.setSaddress(saddr);
			String status = stdService.addStudent(student);
			PrintWriter out = response.getWriter();
			if (status.equals("success")) {
				request.setAttribute("status", "success");
				rd = request.getRequestDispatcher("../insertResult.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("status", "failure");
				rd = request.getRequestDispatcher("../insertResult.jsp");
				rd.forward(request, response);
			}
			out.close();
		} if (request.getRequestURI().endsWith("searchform")) {
			PrintWriter out = response.getWriter();
			String sid = request.getParameter("sid");
			Student student = stdService.searchStudent(Integer.parseInt(sid));
			request.setAttribute("student", student);
			rd=request.getRequestDispatcher("../display.jsp");
			rd.forward(request, response);
			

		} if (request.getRequestURI().endsWith("editform")) {
			String sid = request.getParameter("sid");
			Student student = stdService.searchStudent(Integer.parseInt(sid));
			if (student != null) {
				request.setAttribute("student", student);
				rd=request.getRequestDispatcher("../editRecord.jsp");
				rd.forward(request, response);
			}
			else {
				request.setAttribute("student", student);
				rd=request.getRequestDispatcher("../editRecord.jsp");
				rd.forward(request, response);
			}
			
		} if (request.getRequestURI().endsWith("updateform")) {
			String sid = request.getParameter("sid");
			String sage = request.getParameter("sage");
			String sname = request.getParameter("sname");
			String saddr = request.getParameter("saddr");
			Student student = new Student();
			student.setSid(Integer.parseInt(sid));
			student.setSage(Integer.parseInt(sage));
			student.setSname(sname);
			student.setSaddress(saddr);
			String status = stdService.updateStudent(student);
			if (status.equals("success")) {
				rd = request.getRequestDispatcher("../updateSuccess.html");
				rd.forward(request, response);
			} else {
				rd = request.getRequestDispatcher("../updateFailure.html");
				rd.forward(request, response);
			}
		} if (request.getRequestURI().endsWith("deleteform")) {
			String sid = request.getParameter("sid");
			String status = stdService.deleteStudent(Integer.parseInt(sid));
			PrintWriter out = response.getWriter();
			if (status.equals("success")) {
				request.setAttribute("status", "success");
				rd = request.getRequestDispatcher("../deleteResult.jsp");
				rd.forward(request, response);
			} 
			else if(status.equals("failure")) {
				request.setAttribute("status", "failure");
				rd = request.getRequestDispatcher("../deleteResult.jsp");
				rd.forward(request, response);
			}
			else if (status.equals("not found")){
				request.setAttribute("status", "not found");
				rd = request.getRequestDispatcher("../deleteResult.jsp");
				rd.forward(request, response);
			}
			out.close();
		}
	}

}
