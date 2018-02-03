

public class Calculator {
public int cal(int a, int b ,String operator){
	int res = 0;
	switch (operator) {
	case "+":
		res = a+b;
		break;
	case "-":
		res = a-b;
		break;
	case "*":
		res = a*b;
		break;
	case "/":
		res=a/b;
		break;

	default:
		res = a+b;
		break;
	}
	return res;
}
}
