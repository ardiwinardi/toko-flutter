import 'package:flutter/material.dart';
import 'package:flutter_app_first/app/login_page/custom_exception.dart';
import 'package:flutter_app_first/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _onSubmit() async {
    final model = ref.read(loginPageNotifierProvider.notifier);

    String email = emailController.text;
    String password = passwordController.text;

    try {
      final user = await model.signIn(email, password);
      ref.read(authNotifierProvider.notifier).setCurrentUser(user);
    } on ErrorInputException catch (_) {
    } on ErrorResponseException catch (e) {
      return showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Kesalahan'),
          content: Text(e.message),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Tutup'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildEmail(),
              const SizedBox(
                height: 10.0,
              ),
              _buildPassword(),
              _buildSignInButton()
            ],
          ),
        ),
      ),
    );
  }

  TextField _buildEmail() {
    final state = ref.watch(loginPageNotifierProvider);
    final errorText =
        state.maybeWhen(errorEmail: (message) => message, orElse: () => null);

    return TextField(
      controller: emailController,
      decoration: InputDecoration(
        hintText: "Enter an email",
        errorText: errorText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: const Icon(Icons.email),
      ),
    );
  }

  TextField _buildPassword() {
    final state = ref.watch(loginPageNotifierProvider);
    final errorText = state.maybeWhen(
        errorPassword: (message) => message, orElse: () => null);

    return TextField(
      obscureText: true,
      controller: passwordController,
      decoration: InputDecoration(
        hintText: "Enter a password",
        errorText: errorText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        prefixIcon: const Icon(Icons.password),
      ),
    );
  }

  Container _buildSignInButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: _onSubmit,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(88, 36),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
        ),
        child: const Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
