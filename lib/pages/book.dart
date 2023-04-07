import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: camel_case_types
class book extends StatefulWidget {
  const book({super.key});

  @override
  State<book> createState() => _bookState();
}

// ignore: camel_case_types
class _bookState extends State<book> {
  final startcontroller = TextEditingController();
  final destinationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 10.h),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          height: 40.h,
          child: Card(
              elevation: 5,
              child: ListView(
                children: [
                  SizedBox(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: startcontroller,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Start',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: destinationcontroller,
                      obscureText: false,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Destination',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 20),
                        backgroundColor: const Color.fromRGBO(28, 66, 198, 1.0),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Find Companions",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    ]);
  }
}
