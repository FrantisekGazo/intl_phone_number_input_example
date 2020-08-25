import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TextField(
              key: Key('text_field_1'),
            ),
            InternationalPhoneNumberInput(
              key: Key('text_field_2'),
              onInputChanged: (_) {},
              onInputValidated: (_) {},
              onSubmit: () {},
            ),
          ],
        ),
      ),
    );
  }
}
