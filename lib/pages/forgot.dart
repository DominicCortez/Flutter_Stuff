import 'package:flutter/material.dart';
import 'package:thingamabob/pages/newpass.dart';

//Eto yung sa forgot page na may sekyu question

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  String selectedPrompt = '';

  // Pwede pa dito maglagay ng random security question
  List<String> prompts = [
    'What is your pet\'s name?',
    'In which city were you born?',
    'Your favorite movie?',
    'Sino nahulog sa bangin?',
  ];

  TextEditingController answerController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedPrompt = prompts[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonFormField(
              value: selectedPrompt,
              onChanged: (value) {
                setState(() {
                  selectedPrompt = value.toString();
                });
              },
              items: prompts.map<DropdownMenuItem<String>>((String prompt) {
                return DropdownMenuItem<String>(
                  value: prompt,
                  child: Text(prompt),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Select a Security Prompt',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: answerController,
              decoration: InputDecoration(
                labelText: 'Answer',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPass(),
                  ),
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
