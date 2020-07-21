import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier{ 

  int _counter;

  Counter(this._counter);

  getCounter() => _counter;
  setCounter(int counter) => _counter = counter;

  void increment(){
    _counter++;
    notifyListeners();
  } 

  void decrement(){
    _counter--;
    notifyListeners();
  } 
}