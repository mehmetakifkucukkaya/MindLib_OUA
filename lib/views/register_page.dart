import 'package:flutter/material.dart';
import 'package:mindlib/services/auth_service.dart';
import 'package:mindlib/widgets/my_button.dart';
import 'package:mindlib/widgets/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController =
      TextEditingController();

  // tap to go to register page
  final void Function()? onTap;
  RegisterPage({
    super.key,
    required this.onTap,
  });

  // register method
  void register(BuildContext context) {
    // Email ve şifre alanlarının boş olup olmadığını kontrol et
    if (_emailController.text.isEmpty ||
        _pwController.text.isEmpty ||
        _confirmPwController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Lütfen tüm alanları doldurun."),
        ),
      );
      return; // Herhangi bir alan boşsa metoddan çık
    }

    // Şifrelerin eşleşip eşleşmediğini kontrol et
    if (_pwController.text != _confirmPwController.text) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Şifreler eşleşmiyor!"),
        ),
      );
      return; // Şifreler eşleşmiyorsa metoddan çık
    }

    // Auth servisini al
    final auth = AuthService();
    try {
      auth.signUpWithEmailPassword(
        _emailController.text,
        _pwController.text,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
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
      backgroundColor: Theme.of(context).colorScheme.background,
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
                height: 50,
              ),
              //welcome back message
              Text(
                "Let's create an account for you",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16,
                ),
              ),
              //email textfield
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: _emailController,
              ),
              const SizedBox(
                height: 10,
              ),
              //pw textfield
              MyTextField(
                hintText: "Password",
                obscureText: true,
                controller: _pwController,
              ),
              const SizedBox(
                height: 25,
              ),

              const SizedBox(
                height: 10,
              ),
              //confirm pw textfield
              MyTextField(
                hintText: "Confirm Password",
                obscureText: true,
                controller: _confirmPwController,
              ),
              const SizedBox(
                height: 25,
              ),

              //login button
              MyButton(text: "Register", onTap: () => register(context)),

              const SizedBox(
                height: 25,
              ),

              //register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      "Already have an account",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Text(
                    "Login now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
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
