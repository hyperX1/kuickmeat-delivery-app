import 'package:flutter/material.dart';
import 'package:kuickmeat_delivery_app/providers/auth_provider.dart';
import 'package:kuickmeat_delivery_app/widgets/image_picker.dart';
import 'package:kuickmeat_delivery_app/widgets/register_form.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = 'register-screen';
  @override
  Widget build(BuildContext context) {
    final _authData = Provider.of<AuthProvider>(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ShopPicCard(),
                  RegisterForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
