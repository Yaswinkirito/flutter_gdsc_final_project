import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            height: 20,
            thickness: 1,
          );
        },
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
              width: 60.w,
              child: const Material(
                elevation: 1.0,
                child: ListTile(
                  leading: CircleAvatar(
                      child: Icon(
                    Icons.person,
                    size: 40,
                  )),
                  title: Text(
                    "Contact",
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  subtitle: Text("Yesterday's Conversation"),
                ),
              ));
        });
    ;
  }
}
