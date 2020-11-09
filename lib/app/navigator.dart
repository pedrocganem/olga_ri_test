import 'package:flutter/material.dart';
import 'package:olga_ri_test2/app/pages/home_screen/home_screen_view.dart';
import 'package:olga_ri_test2/app/pages/login_email/login_email_view.dart';

class Routes {
  BuildContext context;

  Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    '/' : (context) => LoginScreen(), 
    '/LoginEmailView' : (context) => LoginEmailView(),
  };
}
