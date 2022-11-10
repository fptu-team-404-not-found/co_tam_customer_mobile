import 'package:co_tam_customer_mobile/app/pages/login/login_screen.dart';
import 'package:co_tam_customer_mobile/app/utils/routes.dart';
import 'package:co_tam_customer_mobile/app/utils/router.dart' as router;
import 'package:flutter/material.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
          title: "Cô Tấm",
          debugShowCheckedModeBanner: false,
          home: LoginScreen(),
          initialRoute: Routes.loginScreen,
          onGenerateRoute: router.Router.generateRoute,
        );
  }
}
