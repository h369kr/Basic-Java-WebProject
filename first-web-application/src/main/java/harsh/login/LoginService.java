package harsh.login;

public class LoginService {

	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("Harsh") && password.equals("something");
	}

}
