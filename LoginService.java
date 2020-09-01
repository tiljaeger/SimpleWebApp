package webapp.login;


public class LoginService {

    public boolean isUserValid(String user, String password) {
      if (user.equals("tjaeger") && password.equals("xyz")) {
        return true;
      } 
      return false;
    }
}
