import 'package:assignment_7/message_widget.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      appBar:AppBar(
        backgroundColor: Color(0xff168C4B),
        leading: Icon(Icons.arrow_back_ios,color: Colors.white),
        leadingWidth: 15,
        title: Row(
          spacing: 10,
          children: [
            CircleAvatar(
            radius: 15,
            backgroundImage: AssetImage('assets/profile_image.png'),
          ),
            Text('Jonh Safwat',
            style: TextStyle(color:Colors.white,fontSize: 14),
            ),
          ]
          ),
          actions: [
            IconButton(
            icon:Icon(Icons.phone,color: Colors.white,),
          onPressed: (){}) ,
          IconButton(
            icon:Icon(Icons.video_call,color: Colors.white,),
          onPressed: (){}),
          IconButton(
            icon:Icon(Icons.more_vert,color: Colors.white,),
          onPressed: (){})
          ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/background_pattern.png',),
         fit: BoxFit.cover,
         ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MessageWidget(message: 'Hello !', isSender: true),
                MessageWidget(message: 'Hello !', isSender: false),
                MessageWidget(message: 'Hey! Have you ever thought\n about how random moments\n can sometimes turn into the\n best memories? Its like the\n universe loves to surprise us\n when we least expect it !', isSender: true),
                MessageWidget(message: 'what a Great Content Tp learn Flutter', isSender: true),
                MessageWidget(message: 'what a Great Content Tp learn Flutter', isSender: false),
                Row(
                  children: [
                    Expanded(child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: IconButton(onPressed: (){}, icon: Image.asset('assets/Camera.png',width: 30,height:30 ,)),
                        suffixIcon: IconButton(onPressed: (){}, icon: Image.asset('assets/Send.png', width: 30, height: 30)),
                        hintText:" Type a Message ... " ,
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)

                        ),
                      ),
                    )),

                    ElevatedButton
                    (style: ElevatedButton.styleFrom(shape: CircleBorder(),padding: EdgeInsets.all(15),backgroundColor: Color(0xff168C4D)),
                      onPressed: (){}, child: ImageIcon(AssetImage('assets/Mic.png'),color: Colors.white,size: 20,))
                  ],

                ),

            
            
              ],
            ),
          ),
        ),
        
      );
    

  }
}
 