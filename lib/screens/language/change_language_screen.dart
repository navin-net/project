import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ChangeLanguageScreen extends StatefulWidget {
  String title;

  ChangeLanguageScreen({super.key, required this.title});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[500],
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context,
            'Callback Data',
            );
          },
          icon:  const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          ),
          title: Text("change_language".tr(),
          style: TextStyle(
            color: Colors.white),
          ),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black.withOpacity(.03)
              ),
              child: ListTile(
                leading: Image.asset('assets/images/khmer.jpg'),
                title: Text("Khmer"),
                trailing: Icon(Icons.check_circle, color: Colors.indigo,),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.black.withOpacity(.03)
              ),
              child: ListTile(
                leading: Image.asset('assets/images/english.jpg'),
                title: Text("English"),
                trailing: Icon(Icons.check_circle, color: Colors.indigo,),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
