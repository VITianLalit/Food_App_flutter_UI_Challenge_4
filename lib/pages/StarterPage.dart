import 'package:flutter/material.dart';
import 'package:ui_challenge_day_3/pages/HomePage.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/starter-image.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ]
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Taking Order For Faster Delivery', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                Text('See restaurants nearby by \nadding location', style: TextStyle(color: Colors.white, height: 1.4, fontSize: 18),),
                SizedBox(height: 100,),

                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [
                            Colors.yellow,
                            Colors.orange,
                          ]
                      )
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Text("Start",style: TextStyle(
                      color: Colors.white,
                    )),
                  ),
                ),
                SizedBox(height: 30,),
                Align(
                  child: Text('Now Delivery To Your Door 24/7', style: TextStyle(color: Colors.white70, fontSize: 15),),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
