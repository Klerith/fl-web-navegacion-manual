import 'package:flutter/material.dart';


class NavigationService {
  
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo( String routeName ) {
    return navigatorKey.currentState!.pushNamed( routeName );
  }

  void goBack( String routeName ) {
    return navigatorKey.currentState!.pop();
  }

}

