import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String valor;
  final Color cor;
  
  const Button({Key? key, required this.valor, this.cor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: 
    Container(
      margin: EdgeInsets.only(top: 30),
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black12,
            ),
            onPressed: () {},
            child: Text(
              valor,
              style: TextStyle(fontSize: 25, color: cor),
            ),
          ),
        ),),);
  }
}
