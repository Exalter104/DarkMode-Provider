import 'package:flutter/material.dart';
import 'package:martverse_api_with_provider/Provider/authlogin.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authLogin = Provider.of<Loginprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login-Provider"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                hintText: "Email",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: passController,
              decoration: const InputDecoration(
                hintText: "Password",
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                authLogin.loginProvider(emailController.text.toString(),
                    passController.text.toString());
              },
              child: Container(
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                child: Center(
                    child: authLogin.loading
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text("Login")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
