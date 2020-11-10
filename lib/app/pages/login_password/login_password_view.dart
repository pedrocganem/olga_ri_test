import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olga_ri_test2/app/pages/login_email/login_controller.dart';
import 'package:olga_ri_test2/app/utils/size_settings.dart';

class LoginPasswordView extends StatefulWidget {
  @override
  _LoginPasswordViewState createState() => _LoginPasswordViewState();
}

class _LoginPasswordViewState extends State<LoginPasswordView> {
  UserController _controller = UserController();
  SizeSettings _size = SizeSettings();
  
  @override
  Widget build(BuildContext context) {
    _size.init(context); 

     _emailFormField(Function() errorText) {
      return SizedBox(
        width: pWidth(320),
        child: TextFormField(
          style: Theme.of(context).textTheme.headline2,
          keyboardType: TextInputType.visiblePassword,
          autocorrect: false,
          enableSuggestions: false,
          onChanged: _controller.user.changePassword,
          obscureText: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            errorText: errorText == null ? null : errorText(),
            hintText: '**************',
            hintStyle: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        leading: SizedBox(
          height: pHeight(60),
          width: pWidth(60),
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: pHeight(40),
                  width: pWidth(40),
                  decoration: BoxDecoration(
                      color: Color(0xFFDDD8C2), shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/images/back_arrow.png',
                  )),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: pHeight(45),
            left: pWidth(30),
            child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Olá, João Pinedo :)\nAgora, insira sua ',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextSpan(
                      text: 'senha',
                      style: Theme.of(context).textTheme.headline4),
                ])),
          ),
          //
          Positioned(
            top: pHeight(112),
            left: pWidth(30),
            child: SizedBox(
                width: pWidth(320),
                child: Observer(
                  builder: (_) {
                    return _emailFormField(_controller.isPasswordValid);
                  },
                )),
          ),
          Positioned(
            left: pWidth(30),
            top: pHeight(200),
            child: GestureDetector(
            onTap: () {
            },
            child: Text('Esqueci minha senha',
            style: Theme.of(context).textTheme.headline6,),
          ),),
          //
          Positioned(
            width: pWidth(375),
            bottom: pHeight(80),
            left: pWidth(0),
            child: Divider(
              thickness: 2,
              color: Theme.of(context).buttonColor,
            ),
          ),
          //
          Positioned(
            bottom: pHeight(0),
            child: Column(children: [
              Divider(
                color: Colors.grey,
                thickness: 10,
              ),
              Container(
                height: pHeight(80),
                width: pWidth(375),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: pHeight(54),
                      width: pWidth(163),
                      child: RaisedButton(
                        elevation: 0,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'ANTERIOR',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    Container(
                        height: pHeight(54),
                        width: pWidth(163),
                        child: Observer(
                          builder: (_) {
                            return RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              color: Theme.of(context).buttonColor,
                              onPressed: _controller.passwordValidator
                                  ? () {
                                      Navigator.pushNamed(context, 'routeName'); 
                                    }
                                  : null,
                              child: Text(
                                'ENTRAR',
                                style: Theme.of(context).textTheme.button,
                              ),
                            );
                          },
                        ))
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}