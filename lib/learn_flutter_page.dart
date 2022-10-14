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
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/image.png'),
          const SizedBox(
            height: 1,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'This is my text widget',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitch ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('1234');
            },
            child: const Text('Elevated Button'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              textStyle: const TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              debugPrint('1234');
            },
            child: const Text('Outlined Button'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextButton(
            onPressed: () {
              debugPrint('1234');
            },
            child: const Text('Text Button'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('This is gesture!');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  Icons.local_fire_department,
                  color: Colors.red,
                ),
                Text(
                  'Row Widget',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.green,
                ),
              ],
            ),
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
            onChanged: (bool? checked) {
              setState(() {
                isCheckbox = checked;
              });
            },
          ),
        ],
      ),
    );
  }
}
