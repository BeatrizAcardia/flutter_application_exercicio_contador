// ignore_for_file: prefer_function_declarations_over_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class Mycontador extends StatefulWidget {
  const Mycontador({super.key});

  @override
  State<Mycontador> createState() => _MycontadorState();
}

class _MycontadorState extends State<Mycontador> {

final icone = SizedBox(
  height: 130,
  width: 130,
  child: Image.asset('assets/images/iconeContador.png'),
);

  int cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 120,),
            icone,
            SizedBox(height: 25,),
            Text("Contador usando Stateful Widget", style: TextStyle(fontSize: 20),),
            
            SizedBox(height: 15,),
            
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                FloatingActionButton(onPressed: () {
                  cont+=1;
                   setState(() {
              
            });
                },
                child: Text("+", style: TextStyle(fontSize: 40),),
                ),
                SizedBox(width: 15,),

                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue, 
                  ),
                  child: Center(
                    child: Text("$cont"),
                  )
                ),

                SizedBox(width: 15,),
                FloatingActionButton(onPressed: () {
                  cont-=1;
                   setState(() {
            });
                },
                child: Text("-", style: TextStyle(fontSize: 40),),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Text("Valor do contador: $cont")
      ],),),
    );
  }
}