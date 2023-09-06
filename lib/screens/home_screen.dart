import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project/screens/language/change_language_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = "Build Brigth University";
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.indigo[500],
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/buliding.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              height: 150,
              child: Column(children: const [
                CircleAvatar(
                  radius: 30, // Image radius
                  backgroundImage: AssetImage('assets/images/girl.jpg'),
                  // child: ClipOval(
                  //   child: Image.asset('assets/images/girl.jpg', fit: BoxFit.cover),
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "Student ID : PP 427532",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ]),
            ),
            ListTile(
              leading: Icon(Icons.app_registration,color: Colors.white),
              title: Text("For Enrollment",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.manage_history,color: Colors.white),
              title: Text("Manage Enrollment",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.calendar_month,color: Colors.white),
              title: Text("Events",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today,color: Colors.white),
              title: Text("Calendar",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.phone,color: Colors.white),
              title: Text("Contact",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.account_balance_rounded ,color: Colors.white),
              title: Text("Campus",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.content_paste,color: Colors.white),
              title: Text("Apply",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.location_on,color: Colors.white),
              title: Text("Location",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.question_answer ,color: Colors.white),
              title: Text("FAQ",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.school,color: Colors.white),
              title: Text("Scholarship",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.video_collection,color: Colors.white),
              title: Text("Video",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle ,color: Colors.white),
              title: Text("Profile",style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              leading: Icon(Icons.logout ,color: Colors.red),
              title: Text("Logout",style: TextStyle(color: Colors.red),),
            ),
            ListTile(
              leading: Icon(Icons.info,color: Colors.white),
              title: Text("About us",style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("${title}"),
        iconTheme: const IconThemeData(color: Colors.white),

        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.notifications),
            ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 10, right: 10),
          //   child: Icon(Icons.notifications),
          // ),
        IconButton(
          onPressed: (){
        Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => ChangeLanguageScreen(
            title: 'data'
            ),
          ),
        ).then((value) => {
          setState((){
            title = value;
          })
        });
        }, icon: Icon(Icons.language))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.indigo, Colors.white, Colors.white], // Adjust colors as needed
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.0, 1.0], // Adjust stops for the gradient effect
          ),
        ),
        child: ListView(
          children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: SizedBox(
              height: 70,
              width: 50,
              child: Image.asset('assets/images/logo_bbu.png'),
             ),
           ),
            Container(
              height: 270,
              margin: EdgeInsets.only(left: 15,right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.app_registration, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Enrollment", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.event_note_sharp, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Events", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.calendar_month, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Calendar", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.phone_in_talk, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Contact", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.account_balance_rounded, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Campus", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.content_paste, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Apply", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.location_on, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Location", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.question_answer, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "FAQ", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.school, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Scholarship", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.video_collection, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Videos", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.info, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "About Us", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.logout, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Profile", style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // certificate format
            Container(
              margin: EdgeInsets.only(left: 30,top: 10,bottom: 5),
              child: Text(
                "Certificate format",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(left: 2,right: 2),
                child: Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.school, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Associate's Degree", style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.school, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Bachelor's Degree", style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.school, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Master's Degree", style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                height: 40,
                                width: 40,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.school, color: Colors.indigo[500], size: 25,),
                                  ],
                                ),
                              ),
                              Text(
                                "Doctoral Degree", style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),

            // message
            Container(
              margin: EdgeInsets.only(left: 30,top: 10,bottom: 5),
              child: Text(
                "Message",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(left: 2,right: 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                               height: 100,
                                width: 100,
                               child: Image.asset("assets/images/girl.jpg"),
                              ),
                              Text(
                                "Chairman", style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "H.E Dr. Neang Sothearith", style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                child: Image.asset("assets/images/girl.jpg"),
                                height: 100,
                                width: 100,
                              ),
                              const Text(
                                "Chairman", style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "H.E Dr. Som Sothea", style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),
                              )
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),

              ),
            ),

            // Slide show
            Container(
              margin: EdgeInsets.only(left: 30,top: 10,bottom: 5),
              child: Text(
                "Slide Show",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              margin: EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.only(left: 2,right: 2),
                child: Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [

                              Text(
                                "Associate's Degree", style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
