import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/dashboard/user/model/user_model.dart';
import 'package:auto_route_example/product/navigator/app_router.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class UserView extends StatefulWidget {
  @override
  _UserViewState createState() => _UserViewState();
}

class _UserViewState extends State<UserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(''.customProfileImage),
        ),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return TextButton(
              onPressed: () {
                context.router.navigate(UserDetailRoute(
                    model: UserModel(
                        ''.randomSquareImage, ''.customProfileImage)));
              },
              child: Card(
                child: index.isEven
                    ? Image.network(''.randomSquareImage)
                    : Image.network(''.randomImage),
              ),
            );
          }),
    );
  }
}
