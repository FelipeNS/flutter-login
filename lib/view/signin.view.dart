import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/controller/auth.controller.dart';
import 'package:flutter_login/core/app.button_styles.dart';
import 'package:flutter_login/core/app.colors.dart';
import 'package:flutter_login/core/app.text_styles.dart';
import 'package:flutter_login/core/core.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_login/repository/aut.repository.dart';
import 'package:flutter_login/store/app.store.dart';
import 'package:flutter_login/view-model/auth.viewmodel.dart';
import 'package:provider/provider.dart';

class SigninView extends StatefulWidget {
  const SigninView({ Key? key }) : super(key: key);

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final _formKey = GlobalKey<FormState>();
  final _controller = AuthController(AuthRepository());
  var model = AuthViewModel();

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<AppStore>(context);

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
                          onSaved: (value) => {
                            model.email = value
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
                          onSaved: (value) => {
                            model.password = value
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    model.loading
                    ? TextButton(
                      onPressed: () => {},
                      style: AppButtonStyles.primary,
                      child: SizedBox(
                        height: 18.0,
                        width: 18.0,
                        child: CircularProgressIndicator(
                          backgroundColor: AppColors.blue_100,
                          color: AppColors.white,
                          strokeWidth: 2.0,
                        ),
                      ),
                    )
                    : TextButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }

                        setState(() {});
                        _controller.login(model).then((value) {
                          setState(() {});

                          store.setUser(
                            value.id,
                            value.name,
                            value.email,
                            value.avatar,
                            value.token,
                          );
                          Navigator.pushNamed(context, '/');
                        }).catchError((error) {
                          setState(() {});

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                error.message.toString(),
                                style: AppTextStyles.errorMessage,
                              ),
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: AppColors.white,
                              elevation: 2.0,
                            ),
                          );
                        });
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