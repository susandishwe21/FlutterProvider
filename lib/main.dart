import 'package:flutter/material.dart';
import 'package:flutter_provider/counter.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
   return MaterialApp(
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: ChangeNotifierProvider<Counter>(
       create: (context)=>Counter(0),
       child: HomePage(),
     ),
   );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   final counter = Provider.of<Counter>(context);
   return Scaffold(
     appBar : AppBar(
       title: Text("Provider"),
     ),
     body: Center(
       child: Text(
        '${counter.getCounter()}',
        style: Theme.of(context).textTheme.display1,
       ),
     ),
     floatingActionButton: Column(
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
         FloatingActionButton(
           onPressed: counter.increment,
           tooltip: 'Increment',
           child: Icon(Icons.add),
         ),
         FloatingActionButton(
           onPressed: counter.decrement,
           tooltip: 'Decrement',
           child: Icon(Icons.remove),
         )
       ],
     ),
   );
  }
}