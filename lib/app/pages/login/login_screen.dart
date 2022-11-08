import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../json_to_dart/token/token.dart';
import '../../rest_api/rest_api.dart';
import '../../utils/routes.dart';
import '../../widgets/appbar/top_app_bar.dart';
import '../../widgets/button/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSignedIn = true;

  @override
  void initState() {
    checkSignInStatus();
    super.initState();
  }

  void checkSignInStatus() async {
    await Future.delayed(const Duration(seconds: 2));
    GoogleSignIn googleSignIn = GoogleSignIn();
    isSignedIn = await googleSignIn.isSignedIn();
    if (!mounted) return;
    if (isSignedIn) {
      Navigator.pushReplacementNamed(context, Routes.mainScreen0);
    } else {
      isSignedIn = false;
    }
  }

  void googleLogin() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();
    try {
      var result = await _googleSignIn.signIn();
      if (result != null) {
        Token response = await authLogin(result!.email, result!.displayName);

        // obtain shared preferences
        final prefs = await SharedPreferences.getInstance();
        // set value
        await prefs.setString("accessToken", response!.data!.accessToken.toString());
        if (!mounted) return;
        Navigator.pushNamed(context, Routes.mainScreen0);
      }
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size(VisualDensity.maximumDensity, 56),
            child: TopAppBar('Cô Tấm', null, null, null)),
        body: isSignedIn
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                      child: Image(
                          image: AssetImage('assets/img/login_img.png'),
                          width: 500)),
                  const SizedBox(height: 20),
                  LoginButton(
                      title: 'Đăng nhập với Google',
                      icon: const FaIcon(FontAwesomeIcons.google),
                      customFunction: googleLogin),
                  const SizedBox(height: 20),
                  const LoginButton(
                      title: 'Đăng nhập với Facebook',
                      icon: FaIcon(FontAwesomeIcons.facebook))
                ],
              )
            : const Center(
                child: CircularProgressIndicator(),
              ));
  }
}