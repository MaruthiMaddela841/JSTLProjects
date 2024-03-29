package in.ineuron.service;

import in.ineuron.daofactory.StudentDaoFactory;
import in.ineuron.dto.Student;
import in.ineuron.dao.IStudentDao;

public class StudentServiceImpl implements IStudentService {
	IStudentDao studentDao;
	@Override
	public String addStudent(Student student) {
		IStudentDao studentDao=StudentDaoFactory.getStudentDao();
		return studentDao.addStudent(student);
	}

	@Override
	public Student searchStudent(Integer id) {
		IStudentDao studentDao=StudentDaoFactory.getStudentDao();
		return studentDao.searchStudent(id);
	}

	@Override
	public String updateStudent(Integer sid, String sname, Integer sage, String saddress) {
		IStudentDao studentDao=StudentDaoFactory.getStudentDao();
		return studentDao.updateStudent(sid, sname, sage, saddress);
	}

	@Override
	public String deleteStudent(Integer id) {
		IStudentDao studentDao=StudentDaoFactory.getStudentDao();
		return studentDao.deleteStudent(id);
	}

	@Override
	public String updateStudent(Student student) {
		IStudentDao studentDao=StudentDaoFactory.getStudentDao();
		
		return studentDao.updateStudent(student);
	}

}
