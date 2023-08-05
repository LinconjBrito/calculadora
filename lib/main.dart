import 'package:flutter/material.dart';
import 'package:calculadora/widgets/button.dart';

void main() {
  runApp(MeuApp());
}

//TODO - 4: Crie um novo Container, que receberá um column, que por sua vez receberá vários rows, que por sua vez receberão vários raisedbuttons para criar os botões da nossa calculadora. A calculadora deve ficar com o visual similar ao da imagem apresentada em: https://drive.google.com/file/d/1fuKl3cdlr1J-PsLLmKtStvgeHiaeahO6/view?usp=sharing. Dicas: pesquisem no flutter.dev pelas classes/widgets: 'Expanded' e 'RaisedButton'; As cores podem ser diferentes para os botões, fica a seu critério, porém, a estrutura dos botões deve ser a mesma apresentada na imagem.

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(208, 35, 34, 34),
          title: Text("Calculadora"),
        ),
        body: Column(children: [
          Container(
            margin: const EdgeInsets.all(15),
            width: 400,
            height: 140,
            color: Colors.white,
            child: const Center(
                child: Text(
              "Visor",
              style: TextStyle(fontSize: 50),
            )),
          ),
          const Column(
            

            
 
            children: [
            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Button(valor: "C", cor: Colors.blue,),
                Button(valor: "DEL", cor: Colors.blue,),
                Button(valor: "%", cor: Colors.blue,),
                Button(valor: "/", cor: Colors.blue,),
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
              children: [
                Button(valor: "7"),
                Button(valor: "8"),
                Button(valor: "9"),
                Button(valor: "*", cor: Colors.blue,),
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Button(valor: "4"),
                Button(valor: "5"),
                Button(valor: "6"),
                Button(valor: "+", cor: Colors.blue,),
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Button(valor: "1"),
                Button(valor: "2"),
                Button(valor: "3"),
                Button(valor: "-", cor: Colors.blue,),
              ],
            ),
            Row(
             
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                Button(valor: "0"),
                Button(valor: "."),
                Button(valor: "=", cor: Colors.blue,),
               
              ],
            ),
          ]),
        ]),
      ),
    );
  }
}
