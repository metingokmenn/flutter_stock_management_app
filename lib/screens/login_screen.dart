import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gokfen_stock_app/constants/app_constants.dart';
import 'package:gokfen_stock_app/screens/main_screen.dart';
import 'package:gokfen_stock_app/widgets/text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giriş Yap'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
                padding: AppConsts.appPadding16(),
                child: Image.asset("assets/images/logo.jpeg")),
          ),
          Expanded(
            flex: 2,
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomTextFormField(
                    labelText: 'Kullanıcı Adı',
                    autoFocus: true,
                  ),
                  CustomTextFormField(
                    labelText: 'Parola',
                    obscureText: true,
                  ),
                  SizedBox(
                    width: 300,
                    child: TextButton(
                      onPressed: () {
                        login(context);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              AppConsts.mainColor().withOpacity(0.8))),
                      child: const Text(
                        'Giriş',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void login(BuildContext context) {
    Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => const MainScreen()));
  }
}
