import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:flutter/material.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';


class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {

  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CustomAppMenu(),

          Spacer(),

          Text('Contador Stateful', style: TextStyle( fontSize: 20 )),
          
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: $counter',
                style: TextStyle( fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar', 
                onPressed: () => setState(() => counter ++ )
              ),

              CustomFlatButton(
                text: 'Decrementar', 
                onPressed: () => setState(() => counter -- )
              ),

            ],
          ),

          Spacer(),
        ],
      ),
    );
  }
}