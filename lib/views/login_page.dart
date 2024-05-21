import 'package:flutter/material.dart';
import 'package:mindlib/views/mainpage.dart';
import 'package:mindlib/widgets/my_button.dart';
import 'package:mindlib/widgets/my_textfield.dart';

import '../services/auth_service.dart';

class LoginPage extends StatelessWidget {
  // email and pw text controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  //tap to go register page
  final void Function()? onTap;

  LoginPage({
    super.key,
    required this.onTap,
  });

  // login method
  void login(BuildContext context) async {
    // Check if email and password fields are empty
    if (_emailController.text.isEmpty || _pwController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter your email and password.'),
        ),
      );
      return;
    }

    final authService = AuthService();
    // Try to sign in
    try {
      await authService.signInWithEmailAndPassword(
          _emailController.text, _pwController.text);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MainPage(),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranYuksekligi = ekranBilgisi.size.height;
    final ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi / 70),
                child: SizedBox(
                  width: ekranGenisligi / 1.6,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("assets/logo.png"),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // Email TextField
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20), // Adjust padding as needed
                color: Colors.white, // Set background color to white
                child: MyTextField(
                  hintText: "Email",
                  obscureText: false,
                  controller: _emailController,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Password TextField
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20), // Adjust padding as needed
                color: Colors.white, // Set background color to white
                child: MyTextField(
                  hintText: "Şifre",
                  obscureText: true,
                  controller: _pwController,
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // Login button
              MyButton(
                text: "Giriş Yap",
                onTap: () => login(context),
              ),
              const SizedBox(
                height: 25,
              ),

              // Register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Üye Değil misin? ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Text(
                      "Hemen Kayıt Ol",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
