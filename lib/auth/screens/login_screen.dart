import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:gap/gap.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/login_background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Get Started",
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                ),
              ),
            ),
            const Gap(16),
            Text(
              "Create Account",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
            const Gap(8),
            Row(),
            const Gap(32),
          ],
        ),
      ),
    );
  }
}
