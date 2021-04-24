import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bases_web/providers/counter_provider.dart';
import 'package:bases_web/ui/shared/custom_app_menu.dart';
import 'package:bases_web/ui/shared/custom_flat_button.dart';


class CounterProviderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( _ ) => CounterProvider( '5' ),
      child: _CounterProviderPageBody()
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final counterProvider = Provider.of<CounterProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CustomAppMenu(),

          Spacer(),

          Text('Contador Provider', style: TextStyle( fontSize: 20 )),
          
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: ${ counterProvider.counter }',
                style: TextStyle( fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Incrementar', 
                onPressed: () => counterProvider.increment()
              ),

              CustomFlatButton(
                text: 'Decrementar', 
                onPressed: () => counterProvider.decrement()
              ),

            ],
          ),

          Spacer(),
        ],
      ),
    );
  }
}