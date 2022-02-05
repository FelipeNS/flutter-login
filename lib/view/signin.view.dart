import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/core/app.button_styles.dart';
import 'package:flutter_login/core/app.colors.dart';
import 'package:flutter_login/core/app.text_styles.dart';
import 'package:flutter_login/core/core.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SigninView extends StatelessWidget {
  SigninView({ Key? key }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(56.0),
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'App',
                    style: AppTextStyles.title,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Name',
                    style: AppTextStyles.subTitle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 56.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [ AppShadows.box ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0)
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: AppColors.blue_300,
                          style: AppTextStyles.body,
                          decoration: InputDecoration(
                            focusColor: AppColors.blue_200,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.placeholder,
                            hintText: 'User',
                            icon: Icon(
                              Feather.user,
                              size: 18.0,
                              color: AppColors.blue_100,
                            ),
                          ),
                          validator: (value) {
                            if(value!.isEmpty) {
                              return 'Invalid e-mail address';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        boxShadow: [ AppShadows.box ],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0)
                        ),
                      ),
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(
                        child: TextFormField(
                          obscureText: true,
                          cursorColor: AppColors.blue_300,
                          style: AppTextStyles.body,
                          decoration: InputDecoration(
                            focusColor: AppColors.blue_200,
                            isDense: true,
                            contentPadding: EdgeInsets.zero,
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintStyle: AppTextStyles.placeholder,
                            hintText: 'Password',
                            icon: Icon(
                              Feather.lock,
                              size: 18.0,
                              color: AppColors.blue_100,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextButton(
                      onPressed: () => {
                        if(_formKey.currentState!.validate()) {
                          _formKey.currentState!.save()
                        }
                      },
                      style: AppButtonStyles.primary,
                      child: Text(
                        'Login',
                        style: AppTextStyles.button,
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Text.rich(
                      TextSpan(
                        text: 'Não tem uma conta? ',
                        style: AppTextStyles.body,
                        children: [
                          TextSpan(
                            text: 'Cadastre-se aqui',
                            style: AppTextStyles.bodyBold,
                            recognizer: TapGestureRecognizer()..onTap = () => {
                              Navigator.pushNamed(context, '/signup')
                            }
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}