import 'package:flutter/material.dart';

class MessageWidget  extends StatelessWidget{
   final String message;
    final bool isSender;
 
const MessageWidget({
  super.key,
  required this.message,
  required this.isSender,
  });

  @override
  Widget build(BuildContext context) {
   
    return Row(
      mainAxisAlignment: isSender ? MainAxisAlignment.start:MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color:isSender? Color(0xff168C4B):Color(0xff232D36),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
              topLeft: Radius.circular(isSender? 0 : 16),
              topRight: Radius.circular(isSender ? 16 : 0 ),
            ),
          ),
          child: Text(
            message,
            style: TextStyle(color: Colors.white,fontSize: 15),
          ),





        )




      ],





    );
  }

}