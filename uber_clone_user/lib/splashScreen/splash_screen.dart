import 'dart:async';
import 'package:flutter/material.dart';
import 'package:uber_clone_user/authentication/login_screen.dart';
import 'package:uber_clone_user/global/global.dart';
import 'package:uber_clone_user/mainScreens/main_screen.dart';
import '../assistants/assistant_methods.dart';


class MySplashScreen extends StatefulWidget
{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen>
{

  startTimer()
  {
    if (currentFirebaseUser!=null) {
      AssistantMethods.readCurrentOnlineUserInfo();
    }
    Timer(const Duration(seconds: 3), () async
    {
      if(fAuth.currentUser != null)
      {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreen()));
      }
      else
      {
        Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context)
  {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("asset/logo.png"),

              const SizedBox(height: 10,),

              const Text(
                "Uber & inDriver Clone App",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
