import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_login/controller/user.controller.dart';
import 'package:flutter_login/core/app.button_styles.dart';
import 'package:flutter_login/core/core.dart';
import 'package:flutter_login/repository/user.repository.dart';
import 'package:flutter_login/store/app.store.dart';
import 'package:flutter_login/view-model/user.viewmodel.dart';
import 'package:provider/provider.dart';

class SignupView extends StatefulWidget {
  const SignupView({ Key? key }) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  final _controller = UserController(UserRepository());
  var model = UserViewModel();

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<AppStore>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.shadow,
        leading: IconButton(
          onPressed: () => {
            Navigator.pop(context)
          },
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
                            onSaved: (value) => {
                              model.name = value
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
                          _controller.create(model).then((value) {
                            setState(() {});
                            store.setUser(
                              value.id,
                              value.name,
                              value.email,
                              value.avatar,
                              value.token
                            );
                            Navigator.pushNamed(context, '/');
                          });
                        },
                        style: AppButtonStyles.primary,
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