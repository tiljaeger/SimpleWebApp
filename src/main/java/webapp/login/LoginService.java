package webapp.login;


public class LoginService {

    public boolean isUserValid(String user, String password) {
      if (user.equals("abc") && password.equals("xyz")) {
        return true;
      } 
      return false;
    }
}
