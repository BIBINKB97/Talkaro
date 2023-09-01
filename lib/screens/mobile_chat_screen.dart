import 'package:flutter/material.dart';
import 'package:talkaro_messenger/colors.dart';
import 'package:talkaro_messenger/info.dart';
import 'package:talkaro_messenger/widgets/chat-list.dart';


class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon:  Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon:  Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon:  Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
           Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon:  Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.emoji_emotions, color: Colors.grey,),
              ),
              suffixIcon: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.camera_alt, color: Colors.grey,),
                    Icon(Icons.attach_file, color: Colors.grey,),
                    Icon(Icons.money, color: Colors.grey,),
                  ],
                ),
              ),
              hintText: 'Type a message!',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide:  BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding:  EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}