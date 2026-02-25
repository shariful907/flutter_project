
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasbih_counter/const/text_style_widgets.dart';
import 'package:intl/intl.dart';
import 'widgets/tasbih_widgets.dart' show Tasbih_activity;

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {

    var time = DateTime.now();

    int selectedIndex = 0;




    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),

      //Appbar Start
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Image.asset("assets/images/menu-outline.png"),
        ),
        leadingWidth: 30,
        title: Text("Home", style: AppTextStyle.titleBlack16),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffCEC5D8).withOpacity(.76),
                image: DecorationImage(
                  image: AssetImage("assets/images/bell-outline.png"),
                ),
              ),
            ),
          ),
        ],
      ),
      //Appbar end

      //Body Start
      body: SingleChildScrollView(
        child: Column(
          children: [

            //Today Part
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("assets/images/top_bg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text("Today", style: AppTextStyle.titleWhile26),

                    SizedBox(height: 5),
                    Text(
                      '${DateFormat('yMMMMd').format(time)}',
                      style: AppTextStyle.titleWhile26,
                    ),

                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),


                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFF5F5F5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Ifter time - 5:59 PM",
                                      style: AppTextStyle.titleIfterSehriText10,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,

                                  ),

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color(0xFFF5F5F5),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Sehri time - 5:10 AM",
                                      style: AppTextStyle.titleIfterSehriText10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),

            //Category Part
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Container(
                height: 150,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Color(0xffCEC5D8).withOpacity(.50),
                  image: DecorationImage(
                      image: AssetImage("assets/images/categoryBG.png"),
                      fit: BoxFit.cover,
                      opacity: .2
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text("Category", style: AppTextStyle.categoryTitleBlack16,),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: Icon(Icons.access_alarm_sharp)),
                                    Text(
                                      "Prayer",
                                      style: AppTextStyle.categoryTextBlack13,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 90,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Tasbih_activity(),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: Icon(Icons.access_alarm_sharp)),
                                    Text(
                                      "Tasbih",
                                      style: AppTextStyle.categoryTextBlack13,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 90,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: Icon(Icons.access_alarm_sharp)),
                                    Text(
                                      "Dua",
                                      style: AppTextStyle.categoryTextBlack13,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 90,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(child: Icon(Icons.book)),
                                    Text(
                                      "Quran",
                                      style: AppTextStyle.categoryTextBlack13,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),


            //Tasbih Get Count Part
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,),
              child: Container(
                height: 140,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Color(0xff764CA5).withOpacity(1),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("assets/images/tasbih_BG.png"),
                      fit: BoxFit.cover,
                      opacity: .30
                  ),
                  //image: DecorationImage(image: AssetImage("assets/images/tasbih_BG.png"),fit: BoxFit.cover)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start Your Day To Count",
                        style: AppTextStyle.titleWhile26,
                      ),
                      Text("Tasbih", style: AppTextStyle.titleWhile26),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Tasbih_activity(),
                              ),
                            );
                          },
                          child: Text("Get Started",style: AppTextStyle.GetStTextP10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 20,),


            //Prayer Time Part
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff764CA5),
                    image: DecorationImage(
                        image: AssetImage("assets/images/PrayerTime_BG.png"),
                        fit: BoxFit.cover,
                      opacity: .30
                    )
                ),
                child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Container(
                            child: Column(
                              children: [
                                Text("Prayer Time", style: AppTextStyle.titleWhile26,),
                                Text('${DateFormat('yMMMMd').format(time)}',style: AppTextStyle.prayerTime15,),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 64,
                                height: 40,
                                color: Color(0xFFFFFFFF),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Fajr",style: AppTextStyle.prayerNameTextP12,),
                                      Text("5:10 AM",style: AppTextStyle.prayerTimeTextP10,)
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 64,
                                height: 40,
                                color: Color(0xFFFFFFFF),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Dhudr",style: AppTextStyle.prayerNameTextP12,),
                                      Text("12:45 PM",style: AppTextStyle.prayerTimeTextP10,)
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 64,
                                height: 40,
                                color: Color(0xFFFFFFFF),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Asr",style: AppTextStyle.prayerNameTextP12,),
                                      Text("4:30 PM",style: AppTextStyle.prayerTimeTextP10,)
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 64,
                                height: 40,
                                color: Color(0xFFFFFFFF),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Maghrib",style: AppTextStyle.prayerNameTextP12,),
                                      Text("5:59 PM",style: AppTextStyle.prayerTimeTextP10,)
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 64,
                                height: 40,
                                color: Color(0xFFFFFFFF),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Isha",style: AppTextStyle.prayerNameTextP12,),
                                      Text("7:30 PM",style: AppTextStyle.prayerTimeTextP10,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                ),
              ),
            ),
           
          ],
        ),
      ),


      //Navigation Menu
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: 'Calendar'),
            BottomNavigationBarItem(icon: Icon(Icons.schedule),label: 'Schedule'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      ]),
    );
  }
}
