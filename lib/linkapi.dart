class Applink {
  //https://alisalhab.000webhostapp.com/ecommerceapp_backend/test.php
  static const String server =
      "https://alisalhab.000webhostapp.com/ecommerceapp_backend";
  static const String test = "$server/test.php";

  // -----------------------auth link------------------------//
  static const String signup = "$server/auth/signup.php";
  static const String verifycode = "$server/auth/verifycode.php";
  static const String login = "$server/auth/login.php";
  // ----------------------forget password-----------------//
  static const String forgetpassword =
      "$server/forgetpassword/forgetpassword.php";
  static const String verifycodeforget =
      "$server/forgetpassword/verifycode.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
}
