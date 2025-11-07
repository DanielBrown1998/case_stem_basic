import 'package:steam/domain/workflow/auth_workflow.dart';

class AuthRepository implements AuthWorkflow {
  @override
  void deactivateAccount(String username) {
    // TODO: implement deactivateAccount
  }

  @override
  void forgotPassword(String email) {
    // TODO: implement forgotPassword
  }

  @override
  String getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  bool isLoggedIn() {
    // TODO: implement isLoggedIn
    throw UnimplementedError();
  }

  @override
  bool login(String username, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  void logout() {
    // TODO: implement logout
  }

  @override
  void register(String username, String password) {
    // TODO: implement register
  }

  @override
  void updateProfile(String username, String email) {
    // TODO: implement updateProfile
  }
}
