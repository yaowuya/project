package cn.edu.scau.zxks.utill;

public class JudgeIsBeforGraduator {

	public JudgeIsBeforGraduator() {
		// TODO Auto-generated constructor stub
	}
	
	public String judge(int num)
	{
		if (num == 1)
		{
			return "grade 1";
		}
		else if (num == 2)
		{
			return "grade 2";
		}
		else if (num == 3)
		{
			return "grade 3";
		}
		else if (num == 4)
		{
			return "grade 4";
		}
		else if (num == 5)
		{
			return "BeforeGradu"; 
		}
		else if (num == 6)
		{
			return "Graduate";
		}
		else if(num == 7)
		{
			return "go abroad";
		}
		else
		{
			return "error";
		}
	}

}
