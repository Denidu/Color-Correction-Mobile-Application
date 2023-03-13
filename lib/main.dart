import 'package:flutter/material.dart';
import 'package:login_page_day_23/animation/FadeAnimation.dart';
import 'package:login_page_day_23/types.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 43, 43, 44),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/pic1.png'))),
                      )),
                  FadeAnimation(
                      1.1,
                      Text(
                        "\n An app to correct your color vision Deficiency \n \n",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )),
                  FadeAnimation(
                      1.2,
                      Text(
                        "Description",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.4,
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac ultrices sapien, eget sollicitudin elit. Phasellus tempor ex ultrices feugiat fermentum. Sed sit amet enim sodales, ornare velit vel, volutpat erat. Quisque viverra congue ante at convallis. Suspendisse vitae mauris consectetur nibh eleifend ultrices. Cras eleifend facilisis nibh et finibus. Quisque congue tellus in ipsum accumsan rhoncus. Quisque non purus vel mauris vulputate euismod.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey[700], fontSize: 15),
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  // FadeAnimation(
                  //     1.5,
                  //     MaterialButton(
                  //       minWidth: double.infinity,
                  //       height: 60,
                  //       onPressed: () {
                  //         Navigator.push(
                  //             context,
                  //             MaterialPageRoute(
                  //                 builder: (context) => LoginPage()));
                  //       },
                  //       shape: RoundedRectangleBorder(
                  //           side: BorderSide(color: Colors.black),
                  //           borderRadius: BorderRadius.circular(50)),
                  //       child: Text(
                  //         "Login",
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.w600, fontSize: 18),
                  //       ),
                  //     )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.6,
                      Container(
                        padding: EdgeInsets.only(top: 3, left: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border(
                              bottom: BorderSide(color: Colors.black),
                              top: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black),
                            )),
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TypePage()));
                          },
                          color: Color.fromARGB(255, 217, 217, 217),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Start",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
