import 'package:flutter/material.dart';
import 'package:medicare/view/healthcareview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Health(),
    );
  }
}

class Health extends StatefulWidget {
  const Health({Key? key}) : super(key: key);

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>const HealthCareView()
                ));
          },
          child: Text('health care'),
        ),
      ),
    );
  }
}
