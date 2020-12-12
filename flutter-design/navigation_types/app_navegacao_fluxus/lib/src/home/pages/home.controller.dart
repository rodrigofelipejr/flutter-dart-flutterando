import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class HomeController extends InheritedWidget {
  final Widget child;

  HomeController({@required this.child}) : super(child: child);

  /* controle para io */
  final BehaviorSubject<int> _streamController = BehaviorSubject.seeded(0);

  /* getter */
  Sink<int> get drawerChangeInput => _streamController.sink;

  /* output */
  Stream<int> get drawerChangeOutput => _streamController.stream;

  static HomeController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}
