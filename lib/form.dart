import 'package:flutter/material.dart';


class ReportForm extends StatefulWidget {
  ReportForm({Key key}) : super(key: key);

  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  final _formKey = GlobalKey<FormState>();
  String activityValue = 'Poaching';

  var activities = [
    'Poaching',
    'Dead Animal',
    'Trafficking',
    'Other'
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            child: Column(
              children: <Widget> [
                Text(
                  'What Happened?',
                  style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 10,
                  obscureText: false,
                  maxLength: 120,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Text(
              'What animals were involved?',
              style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
          TextFormField(
            obscureText: false,
            maxLength: 15,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please provide species';
              }
              return null;
            },
          ),
          Text(
              'What type of activity happened?',
              style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
          ),
          new Container(
            color: Colors.white,
            child: DropdownButton<String>(
              value: activityValue,
              elevation: 16,
              style: TextStyle(
                  color: Colors.black,
              ),
              underline: Container(
                height: 0,
                color: Colors.white,
              ),
              onChanged: (String newValue) {
                setState(() {
                  activityValue = newValue;
                });
              },
              items: activities
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              })
                  .toList(),
          ),
        ),
        Text(
          'Do you have images or video?',
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            color: Colors.yellow,
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
            child: Text('Upload'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
            child: Text('No'),
          ),
        ),
        Text(
          'Where did this happen?',
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            color: Colors.yellow,
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
            child: Text('Select Location'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
            child: Text('Use My Location'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
              }
            },
            child: Text('Submit'),
          ),
        ),
        ],
      ),
    );
  }
}
