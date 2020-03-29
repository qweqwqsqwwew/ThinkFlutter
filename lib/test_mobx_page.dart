import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gank_flutter/mobx/store_manager.dart';
import 'package:mobx/mobx.dart';

import 'main.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Center(
        child: Observer(
          builder: (_) => Text(
                'count is ${StoreManager().counter.value}',
                style: TextStyle(fontSize: 30),
              ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: StoreManager().counter.increment,
      ),
    );
  }

  @override
  void initState() {
    //String greeting = Observable('Hello World');

    autorun((_){
      print("==="+StoreManager().counter.value.toString());
    });

    //greeting.value = 'Hello MobX';

    //dispose();
  }
}
