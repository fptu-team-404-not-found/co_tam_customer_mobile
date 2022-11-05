
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/appbar/top_app_bar.dart';
import '../../widgets/button/login_button.dart';
import 'login_controller.dart';

class LoginScreen extends View {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginScreenView();
}

class LoginScreenView extends ViewState<LoginScreen, LoginController> {
  LoginScreenView() : super(LoginController());

  @override
  Widget get view => Scaffold(
    appBar: const PreferredSize(
        preferredSize: Size(VisualDensity.maximumDensity, 56),
        child: TopAppBar('Cô Tấm', null, null, null)
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(child: Image(image: AssetImage('assets/img/login_img.png'), width: 500)),
        SizedBox(height: 20),
        LoginButton(title: 'Đăng nhập với Google', icon: FaIcon(FontAwesomeIcons.google)),
        SizedBox(height: 20),
        LoginButton(title: 'Đăng nhập với Facebook', icon: FaIcon(FontAwesomeIcons.facebook))
      ],
    ),
  );
}