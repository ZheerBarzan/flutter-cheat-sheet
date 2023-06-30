import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("learn flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/rick.gif'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.blue,
          ),
          Container(
            color: Colors.blue.shade400,
            width: double.infinity,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: const Center(
              child: Text(
                "never gonna give you up never gonna let you down",
                style: TextStyle(color: Color.fromARGB(255, 214, 68, 92)),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitch
                  ? const Color.fromARGB(255, 0, 188, 212)
                  : const Color.fromARGB(255, 81, 168, 84),
            ),
            onPressed: () {},
            child: const Text("eleveted button"),
          ),
          OutlinedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: isSwitch
                  ? const Color.fromARGB(255, 0, 188, 212)
                  : const Color.fromARGB(255, 81, 168, 84),
            ),
            onPressed: () {},
            child: const Text("outlined button"),
          ),
          TextButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: isSwitch
                  ? const Color.fromARGB(255, 0, 188, 212)
                  : const Color.fromARGB(255, 81, 168, 84),
            ),
            onPressed: () {},
            child: const Text("text button"),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.apple,
                color: Color.fromARGB(255, 101, 104, 105),
              ),
              Icon(
                Icons.android,
                color: Color.fromARGB(255, 114, 190, 117),
              ),
              Icon(
                Icons.window_sharp,
                color: Color.fromARGB(255, 80, 149, 205),
              ),
            ],
          ),
          Switch(
            value: isSwitch,
            onChanged: (bool newBool) {
              setState(() {
                isSwitch = newBool;
              });
            },
          ),
          Checkbox(
              value: isCheckbox,
              onChanged: (bool? newBool) {
                setState(() {
                  isCheckbox = newBool;
                });
              }),
        ],
      ),
    );
  }
}
