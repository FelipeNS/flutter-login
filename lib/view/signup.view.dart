import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_login/core/app.button_styles.dart';
import 'package:flutter_login/core/core.dart';

class SignupView extends StatelessWidget {
  SignupView({ Key? key }) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.shadow,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(
            Feather.arrow_left,
            size: 24,
            color: AppColors.blue_300,
          ),
        ),
      ),
      body: Container(
        color: AppColors.white,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(56.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Register',
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [ AppShadows.box ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0)
                          ),
                        ),
                        child: Flexible(
                          child: TextFormField(
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
                              hintText: 'Name',
                              icon: Icon(
                                Feather.user,
                                size: 18.0,
                                color: AppColors.blue_100,
                              ),
                            ),
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Invalid name';
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [ AppShadows.box ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0)
                          ),
                        ),
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
                              hintText: 'Email',
                              icon: Icon(
                                Feather.at_sign,
                                size: 18.0,
                                color: AppColors.blue_100,
                              ),
                            ),
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Inválid e-mail address';
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [ AppShadows.box ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0)
                          ),
                        ),
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
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Invalid password';
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
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          boxShadow: [ AppShadows.box ],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0)
                          ),
                        ),
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
                              hintText: 'Confirm Password',
                              icon: Icon(
                                Feather.lock,
                                size: 18.0,
                                color: AppColors.blue_100,
                              ),
                            ),
                            validator: (value) {
                              if(value!.isEmpty) {
                                return 'Invalid password';
                              }
                              return null;
                            },
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
                        style: ButtonStyles.primary,
                        child: Text(
                          'Register',
                          style: AppTextStyles.button,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}