import 'package:flutter/material.dart';
import 'package:olga_ri_test2/app/pages/login/login_view.dart';

class Routes {
  BuildContext context;

  Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
    '/' : (context) => LoginScreen(), 
  };
}
