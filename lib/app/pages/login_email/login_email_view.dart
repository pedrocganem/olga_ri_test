import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:olga_ri_test2/app/data/models/user.dart';
import 'package:olga_ri_test2/app/pages/login_email/login_email_controller.dart';
import 'package:olga_ri_test2/app/utils/size_settings.dart';

class LoginEmailView extends StatefulWidget {
  @override
  _LoginEmailViewState createState() => _LoginEmailViewState();
}

class _LoginEmailViewState extends State<LoginEmailView> {
  UserController _controller = UserController(); 
  SizeSettings _size = SizeSettings();

  @override
  Widget build(BuildContext context) {
    _emailFormField() {
      return SizedBox(
        width: pWidth(320),
        child: TextFormField(
          style: Theme.of(context).textTheme.headline2,
          keyboardType: TextInputType.emailAddress,
          autocorrect: false,
          enableSuggestions: false,
          onChanged: _controller.user.changeEmail,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            hintText: 'Digite aqui',
            hintStyle: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      );
    }

    _size.init(context);
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
                    text: 'Para comecar,\nqual seu ',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  TextSpan(
                      text: 'e-mail?',
                      style: Theme.of(context).textTheme.headline4),
                ])),
          ),
          Positioned(
            top: pHeight(112),
            left: pWidth(30),
            child: SizedBox(
              width: pWidth(320),
              child: TextFormField(
                style: Theme.of(context).textTheme.headline2,
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                enableSuggestions: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  hintText: 'Digite aqui',
                  hintStyle: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ),
          ),
          Positioned(
            width: pWidth(75),
            bottom: pHeight(80),
            left: pWidth(0),
            child: Divider(
              thickness: 2,
              color: Theme.of(context).buttonColor,
            ),
          ),
          Positioned(
            width: pWidth(375),
            bottom: pHeight(80),
            left: pWidth(0),
            child: Divider(
              color: Color(0xFFF1EFE7),
            ),
          ),
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
                          'CANCELAR',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                    Container(
                      height: pHeight(54),
                      width: pWidth(163),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: Theme.of(context).buttonColor,
                        onPressed: () {},
                        child: Text(
                          'PROXIMO',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    )
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
