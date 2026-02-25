import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasbih_counter/const/text_style_widgets.dart';

class Tasbih_activity extends StatefulWidget{
  @override
  State<Tasbih_activity> createState()=> _tasbih_widgets();
  
}

class _tasbih_widgets extends State<Tasbih_activity>{

  int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // leading: Padding(
        //     padding: EdgeInsets.all(10),
        //   child: Text("Home"),
        // ),
        title: Text("Tasbih Counter", style: AppTextStyle.titleBlack16),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffCEC5D8).withOpacity(.76),
                  image: DecorationImage(
                      image: AssetImage("assets/images/bell-outline.png"))

              ),
            ),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 450,
              width: MediaQuery
                  .sizeOf(context)
                  .width,
              //color: Colors.grey,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff764CA5),
                  image: DecorationImage(
                      image: AssetImage("assets/images/Counter_Page_BG.png"),
                      fit: BoxFit.cover,
                      opacity: .20
                  )
              ),

              child: Column(
                children: [
                  //Arabic Text part
                  SizedBox(height: 40,),
                  Container(
                    child: Text("الله أكبر", style: AppTextStyle.arabicText20,),
                  ),

                  //Stopwatch
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    // alignment: Alignment.center,
                    // width: 80,
                    // height: 30,
                    // color: Color(0xFFFFFFFF),
                    child: Text("00:00:00:00",
                      //formattedTime,
                      style: AppTextStyle.stopwatchText14,),
                  ),

                  SizedBox(height: 30,),
                  Container(
                    child: Text("Tasbih Counter",
                      style: AppTextStyle.tasbihCounterText20,),
                  ),

                  SizedBox(height: 30,),
                  Container(
                    child: Text(
                      "000", style: AppTextStyle.tasbihCountText20White,),
                  ),

                  SizedBox(height: 30,),
                  // Switch(
                  //   value: switchValue,
                  //   activeColor: Colors.white,
                  //
                  // ),


                  SizedBox(height: 30,),
                  //Container(child: Text("Text 6"),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffededed),
                          //shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: IconButton(icon: Icon(Icons.refresh,
                          //color: Colors.white,
                          size: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF764CA5),
                        ),
                            onPressed:(){},
                          //style: AppTextStyle.playStopResetButtonPurpleText14,
                        ),
                      ),

                      SizedBox(width: 30,),
                      ElevatedButton(onPressed: (){}, child: Text("Stop")),

                      SizedBox(width: 30,),
                      ElevatedButton(onPressed: (){}, child: Icon(Icons.play_arrow))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Calendar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), label: 'Schedule'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),

    );

  }
  
}