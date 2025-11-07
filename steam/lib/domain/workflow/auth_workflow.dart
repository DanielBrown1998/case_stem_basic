abstract class AuthWorkflow {
  bool login(String username, String password);
  void logout();
  bool isLoggedIn();
  String getCurrentUser();
  void register(String username, String password);
  void forgotPassword(String email);
  void updateProfile(String username, String email);
  void deactivateAccount(String username);
}
