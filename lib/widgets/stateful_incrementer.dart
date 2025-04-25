import 'package:flutter/material.dart';

class StatefulIncrementer extends StatefulWidget{
  final void Function(int) updateCallback;
  final int Function() valueSupplier;
  
  const StatefulIncrementer({super.key, required this.updateCallback, required this.valueSupplier});
  
  @override
  State<StatefulWidget> createState() => StatefulIncrementerState();
  
}

class StatefulIncrementerState extends State<StatefulIncrementer>{
  @override
  Widget build(BuildContext context) {
    //TODO implement nicely with both add and remove buttons, and maybe limits on both
    return FloatingActionButton(child: Text(widget.valueSupplier.call().toString()), onPressed: () {
      widget.updateCallback.call(widget.valueSupplier.call() + 1);
      setState(() {
        //required to update the state
      });
    });
  }
}