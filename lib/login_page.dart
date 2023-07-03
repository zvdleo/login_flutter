import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = true;
  bool isPasswordValid = true;

  void validateForm() {
    setState(() {
      isEmailValid = emailController.text.isNotEmpty &&
          emailController.text.contains('@') &&
          emailController.text.contains('.') &&
          emailController.text.indexOf('@') < emailController.text.lastIndexOf('.');
      isPasswordValid = passwordController.text.isNotEmpty && passwordController.text.length >= 7;
      if (isEmailValid && isPasswordValid) {
        if (emailController.text == 'valido@usuario.com.br' && passwordController.text == '123456@') {
          Navigator.pushNamed(context, '/list');
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Centralizar os widgets
              children: [
                const Align(
                  alignment: Alignment.centerLeft, // Alinhar o título à esquerda
                  child: Text(
                    'Login', // Título "Login"
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity, // Preencher a largura máxima
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: isEmailValid ? Colors.grey : Colors.red),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity, // Preencher a largura máxima
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: isPasswordValid ? Colors.grey : Colors.red),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  width: double.infinity, // Preencher a largura máxima
                  child: ElevatedButton(
                    onPressed: validateForm,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Ação para "Forgot password?"
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                const Text(
                  'Or Login With', // Texto "Or Login With"
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinhar os ícones às extremidades
                  children: [
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Ação para o ícone do Facebook
                        },
                        icon: Image.asset(
                          'assets/images/facebook.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Ação para o ícone do Twitter
                        },
                        icon: Image.asset(
                          'assets/images/twitter.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                      ),
                    ),
                    Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: IconButton(
                        onPressed: () {
                          // Ação para o ícone do Instagram
                        },
                        icon: Image.asset(
                          'assets/images/instagram.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.black),
                ),
                const Text(
                  'Sign up',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




