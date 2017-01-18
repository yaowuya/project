package cn.edu.scau.zxks.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.scau.zxks.dao.StudentMapper;
import cn.edu.scau.zxks.entity.Student;
import cn.edu.scau.zxks.service.inter.StudentService;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	StudentMapper studentMapper;
	
	@Override
	public Student getByEmail(String email) {
		return studentMapper.selectByEmail(email);
	}

	@Override
	public int updateStudent(Student student) {
		return studentMapper.updateByPrimaryKey(student);
	}

	@Override
	public int countAll() {
		return studentMapper.countAll();
	}

	@Override
	public int insertStudent(Student student) {
		return studentMapper.insert(student);
	}

}
