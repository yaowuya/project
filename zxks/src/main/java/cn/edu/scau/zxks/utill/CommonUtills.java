package cn.edu.scau.zxks.utill;

import java.util.UUID;

public class CommonUtills {

	public static String generateID(){
		return UUID.randomUUID().toString().replace("-", "").toUpperCase();
	}
}
