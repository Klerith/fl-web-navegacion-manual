import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:bases_web/ui/views/counter_provider_view.dart';
import 'package:bases_web/ui/views/counter_view.dart';
import 'package:bases_web/ui/views/view_404.dart';

import 'package:flutter/foundation.dart' show kIsWeb;



class RouteGenerator {

  static Route<dynamic> generateRoute( RouteSettings settings ) {

    switch( settings.name ) {

      case '/stateful':
        return _fadeRoute( CounterView(), '/stateful' );
      
      case '/provider':
        return _fadeRoute( CounterProviderView(), '/provider' );

      default:
        return _fadeRoute( View404(), '/404' );
    }
  }

  static PageRoute _fadeRoute( Widget child, String routeName ) {


    return PageRouteBuilder(
      settings: RouteSettings(name:  routeName ),
      pageBuilder: ( _, __, ___ ) => child,
      transitionDuration: Duration( milliseconds: 200 ),
      transitionsBuilder: ( _, animation, __, ___ ) => 
        (kIsWeb) 
        ? FadeTransition(
            opacity: animation,
            child: child,
          )
        : CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: __, child: child, linearTransition: true)
    );

  }

}

