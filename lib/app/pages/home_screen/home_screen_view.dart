import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:olga_ri_test2/app/utils/size_settings.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeSettings _controller = SizeSettings();
    _controller.init(context);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          Container(
            color: Theme.of(context).accentColor.withOpacity(0.7),
            width: double.infinity,
            height: pHeight(330),
            child: Column(children: [
              Image.asset(
                'assets/images/background_image.png',
                scale: 1,
                alignment: Alignment.topCenter,
                width: pWidth(520),
              ),
              SizedBox(
                height: pHeight(45),
              ),
              Image.asset(
                'assets/images/logo.png',
                height: pHeight(60),
                width: pWidth(120),
              )
            ]),
          ),
          SizedBox(
            height: pHeight(24),
          ),
          Text(
            'VAMO DE SALADA?',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          SizedBox(height: 16),
          Text(
            'Falta pouco para voce matar sua \n fome de Olga Ri ;)',
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: pHeight(24)),
          SizedBox(
            height: pHeight(56),
            width: pWidth(327),
            child: RaisedButton(
              color: Color(0xFFF9CA07),
              onPressed: () {
                Navigator.pushNamed(context, '/LoginEmailView');
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                'ENTRAR',
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ),
          SizedBox(height: pHeight(24)),
          Text(
            'Ou entre com:',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: pHeight(15)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loginWithButton(
                  context, 'assets/images/google.png', Color(0xFF0000), 24, 24),
              SizedBox(width: pWidth(16)),
              loginWithButton(context, 'assets/images/facebook.png',
                  Color(0xFF1877F2), 24, 24),
              SizedBox(width: pWidth(16)),
              loginWithButton(
                context,
                'assets/images/apple.png',
                Color(0xFF000000),
                24,
                18.94,
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget loginWithButton(BuildContext context, String imgAsset, Color color,
    double inputHeight, double inputWidth) {
  return Container(
    height: pHeight(56),
    width: pWidth(56),
    decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Color(0xFFCBCBCB), width: 1),
        shape: BoxShape.circle),
    child: Center(
      child: IconButton(
        icon: Image.asset(
          imgAsset,
          height: pHeight(inputHeight),
          width: pWidth(inputWidth),
        ),
        onPressed: () {},
      ),
    ),
  );
}
