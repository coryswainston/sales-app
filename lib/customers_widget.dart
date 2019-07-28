import 'package:flutter/material.dart';

class CustomersState extends State<CustomersWidget> {

  final List<String> _customers = [
    'Kaden Kunz',
    'Curtis Rounds',
    'Kevin Payne',
    'Cory Swainston',
    'Dalton Hanks',
    'Kaden Kunz',
    'Curtis Rounds',
    'Kevin Payne',
    'Kaden Kunz',
    'Curtis Rounds',
    'Kevin Payne',
    'Cory Swainston',
    'Dalton Hanks',
    'Kaden Kunz',
    'Curtis Rounds',
    'Kevin Payne',
    'Kaden Kunz',
    'Curtis Rounds',
    'Kevin Payne',
    'Cory Swainston',
    'Dalton Hanks',
    'Kaden Kunz',
    'Curtis Rounds',
    'Kevin Payne',
  ];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return _buildCustomers();
  }

  Widget _buildCustomers() {
    return ListView(
      children: _customers.map((c) {
          return _buildRow(c);
        }).toList(),
    );
  }

  Widget _buildRow(String c) {
    return ListTile(
      title: Text(
        c,
        style: _biggerFont,
      ),
      trailing: null,
      onTap: () {
        setState(() {
        });
      },
    );
  }
}

class CustomersWidget extends StatefulWidget {
  @override
  CustomersState createState() => CustomersState();
}