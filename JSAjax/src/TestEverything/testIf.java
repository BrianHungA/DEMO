package TestEverything;

import org.apache.commons.lang.StringUtils;

public class testIf {

	public static void main(String[] args) {
		String a = "alpha";
		if (StringUtils.isNotBlank(a)) {
			System.out.println("true");
		}else{
			System.out.println("false");
		}
	}

}
