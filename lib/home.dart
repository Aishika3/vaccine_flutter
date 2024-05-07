import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  static String pincode = "";

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Indian Vaccine"),
      ),
      body: Stack(
        children: [
          Container
          (
            margin: const EdgeInsets.only(top: 20),
            height: 200, // Set the desired height for the image container
            decoration: const BoxDecoration
            (
              shape: BoxShape.circle, // Make the container circular
              image: DecorationImage
              (
                image: AssetImage('assets/covid.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 0),
              child: const Text(
                'Not feeling well,\nwe will take care of it',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color.fromARGB(255, 41, 34, 104), fontSize: 20),
              ),
            ),
          ),
          Container
          (
            margin: const EdgeInsets.only(left: 30, right: 30, top: 200),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (data) {
                    MyHome.pincode = data;
                  },
                  decoration: InputDecoration(
                    hintText: "Pincode",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal,
                  elevation: 5,
                  child: MaterialButton(
                    height: 40,
                    minWidth: 130,
                    onPressed: () {
                      Navigator.pushNamed(context, 'vaccine');
                    },
                    child: const Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
