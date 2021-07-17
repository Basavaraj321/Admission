import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

Container _getBtmNavBar(){
  return Container(
    height: 70,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black87.withOpacity(0.1),
          spreadRadius: 2,
          blurRadius: 2,
        )
      ],
    ),

    child: ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
      child: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined,color: Colors.blue),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore_outlined,color: Colors.blue),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school_outlined,color: Colors.blue),
          label: 'Admissions',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help_outline_rounded,color: Colors.blue),
          label: 'Help',
        ),
      ],
      unselectedItemColor: Colors.blue,
      unselectedFontSize: 10,
      selectedFontSize: 10,
      backgroundColor: Colors.white,


    ),),);


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
                child: AppBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                  ),
                  centerTitle: true,
                  title: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('My Admissions',style: TextStyle(

                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24
                    ),),
                  ),
                  leading: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Icon(Icons.arrow_back_ios,color: Colors.white,),
                  )
                ),
              preferredSize: Size.fromHeight(90.0),
            ),
              bottomNavigationBar: _getBtmNavBar(),

              body: SafeArea(
child: ListView(
  children: [
    SizedBox(height: 200.0,
    width: double.infinity,
    child: CarouselSlider(

        items: [
          Container(
              width: double.infinity,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.cyan
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 30,left: 20),
                    child: Text('ONLINE TUTORING\nSESSIONS',style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Colors.black87.withOpacity(0.8),
                          offset: Offset(-5, 3),
                          blurRadius: 2,
                        ),
                      ]
                    ),),),
                    SizedBox(height: 5,),
                    Padding(padding: EdgeInsets.only(left: 0),
                    child: Text('Learning at the comfort of\nyour home', style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                    ),),)

                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 5),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: DecorationImage(
                      image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all( Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                ),)
              ],
            ),
          ),
        ], options: CarouselOptions(
      enlargeCenterPage: true,
      enableInfiniteScroll: true,
      height: 150
    )),),




    Column(
      children: [
        Container(
          margin: EdgeInsets.zero,
          height: 120,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black87.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
              )
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 15,left: 15),
                    child: Text('My admissions',style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10,left: 15),
                    child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nPraesent consectetur massa neque,',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                    ),),),
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(top: 10,left: 15),
                    child: Text('Lorem ipsum dolor sit amet, consectetur',style: TextStyle(
                      color: Colors.black87,
                      fontSize: 12,
                    ),),),
                ],
              ),

            ],
          ),
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(top:10,left:20),
              child: OutlinedButton(onPressed: () {  }, child: Text('College Predictor'),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.white,
                  shadowColor: Colors.black87,
                  elevation: 8,
                  fixedSize: Size(170,50)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top:10,left:10,right: 20),
              child: OutlinedButton(onPressed: () {  }, child: Text('Degree Selector'),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black87,
                    elevation: 8,
                    fixedSize: Size(170,50)
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(top:10,left:20),
              child: OutlinedButton(onPressed: () {  }, child: Text('My Coaching'),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black87,
                    elevation: 8,
                    fixedSize: Size(170,50)
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top:10,left:10,right: 20),
              child: OutlinedButton(onPressed: () {  }, child: Text('Overseas Admissions'),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white,
                    shadowColor: Colors.black87,
                    elevation: 8,
                    fixedSize: Size(170,50)
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(top: 35,left: 25),
              child: Text('Blogs For you',style: TextStyle(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(bottom:20),
          child: Row(
            children: [
              Padding(padding: EdgeInsets.only(top: 10,left: 20),
                child: Container(
                  height: 120,
                  width: 145,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 150.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5,left: 5),
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                      ),),)

                    ],
                  ),
                ),),
              Padding(padding: EdgeInsets.only(top: 10,left: 20),
                child: Container(
                  height: 120,
                  width: 145,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 150.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5,left: 5),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',style: TextStyle(
                          fontSize: 10,
                          color: Colors.black87,
                        ),),)

                    ],
                  ),
                ),),
              Padding(padding: EdgeInsets.only(top: 10,left: 20),
                child: Container(
                  height: 120,
                  width: 145,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 150.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: DecorationImage(
                            image: NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 4.0,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5,left: 5),
                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit',style: TextStyle(
                          fontSize: 10,
                          color: Colors.black87,
                        ),),)

                    ],
                  ),
                ),)

            ],

          ),
        )


          ],




    ),


  ],
),

              )

              
      )
    ));
  }
}



