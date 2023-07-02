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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
        ],
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
                "never gonna give you up",
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
              setState(
                () {
                  isCheckbox = newBool;
                },
              );
            },
          ),
          Image.network(
              "https://th.bing.com/th/id/R.4e6eaceeb14b75b20cd33f7b079c2a25?rik=L6YjcvqIqRyJZw&riu=http%3a%2f%2fupload.wikimedia.org%2fwikipedia%2fcommons%2f4%2f44%2fAlbert_Einstein_Head_Cleaned_N_Cropped.jpg&ehk=nkqiYpuBU%2fezd%2b1OjMDLtd%2bTM4OL99AjnXZxuxKKJzU%3d&risl=&pid=ImgRaw&r=0")
        ],
      ),
    );
  }
}
