import 'package:flutter/material.dart';
import 'package:spotify_clone/src/modules/login-form/login_form.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final safeAreaTopSize = MediaQuery.of(context).viewPadding;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: safeAreaTopSize.top,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: LoginForm()),
        ],
      ),
    );
  }
}
