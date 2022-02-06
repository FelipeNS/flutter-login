import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_login/core/core.dart';
import 'package:flutter_login/store/app.store.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<AppStore>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shadowColor: AppColors.shadow,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(
            Feather.menu,
            size: 24,
            color: AppColors.blue_300,
          ),
        ),
      ),
      body: Container(
        color: AppColors.white,
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Column(
            children: [
              Container(
                width: 120.0,
                height: 120.0,
                decoration: BoxDecoration(
                  color: AppColors.blue_100,
                  shape: BoxShape.circle,
                  boxShadow: [
                    AppShadows.box
                  ],
                  image: DecorationImage(
                    image: NetworkImage(store.avatar.toString()),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                store.name.toString(),
                style: AppTextStyles.subTitle,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text(
                store.email.toString(),
                style: AppTextStyles.bodyBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}