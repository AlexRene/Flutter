import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Preço',
              hintText: 'exemplo@exemplo.com',
              //border: OutlineInputBorder(),
              errorText: 'Campo Obrigatório',
              prefixText: 'R\$ ', //Deixa um texto fixo na parte esquerda da tela
              suffixText: 'cm',
            ),
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
            //obscureText: true, //Oculta o que for digitado
            obscuringCharacter: 'x', // Muda o caracter obscuro
          ),
        ),
      ),
    );
  }
}