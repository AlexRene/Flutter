import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController emailController =
      TextEditingController(); // Cria um controller do tipo email

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                ),
              ),
              ElevatedButton(
                onPressed: login,
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void login()
  {
    String text = emailController.text;
    print(text);
    emailController.clear(); //Limpa o conteudo do campo
    emailController.text = 'Oi'; //Coloca um texto no campo
  }
}
