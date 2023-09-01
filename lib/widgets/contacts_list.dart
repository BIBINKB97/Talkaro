import 'package:flutter/material.dart';
import 'package:talkaro_messenger/colors.dart';
import 'package:talkaro_messenger/info.dart';
import 'package:talkaro_messenger/screens/mobile_chat_screen.dart';


class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 10.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>  MobileChatScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding:  EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    title: Text(
                      info[index]['name'].toString(),
                      style:  TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Padding(
                      padding:  EdgeInsets.only(top: 6.0),
                      child: Text(
                        info[index]['message'].toString(),
                        style:  TextStyle(fontSize: 15),
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        info[index]['profilePic'].toString(),
                      ),
                      radius: 30,
                    ),
                    trailing: Text(
                      info[index]['time'].toString(),
                      style:  TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
               Divider(color: dividerColor, indent: 85),
            ],
          );
        },
      ),
    );
  }
}