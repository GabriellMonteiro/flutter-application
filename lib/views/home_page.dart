import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController text = TextEditingController();
  bool obscureText = false;
  String texto = "";
  List tasks = ["Dar aula", "trabalhar", "etudar"];

  @override
  void dispose() {
    text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            TextField(
              controller: text,
              keyboardType: TextInputType.text,
              obscureText: obscureText,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Tarefa",
                prefixIcon: IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      text.clear();
                    });
                  },
                  splashRadius: 16,
                ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.check),
                  onPressed: () {
                    setState(() {
                      tasks.add(text.text);
                    });
                  },
                  splashRadius: 16,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tasks[index]));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
