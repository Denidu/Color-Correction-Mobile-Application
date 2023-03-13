import 'package:flutter/material.dart';

class TypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 43, 43, 44),
      appBar: AppBar(
        elevation: 0,
        // ignore: deprecated_member_use
        brightness: Brightness.light,
        backgroundColor: Color.fromARGB(255, 43, 43, 44),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,

        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 45),
              //  child: Stepper(
              //        controlsBuilder:...
              //  ),
            ),
            Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: Text(
                "Choose your type of\ncolor blindness",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              left: 50,
              top: 150,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image1.png'),
              ),
            ),
            Positioned(
              left: 30,
              top: 300,
              child: MaterialButton(
                height: 45,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TypePage()));
                },
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "Deuteranophia",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            Positioned(
              right: 50,
              top: 150,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image2.png'),
              ),
            ),
            Positioned(
              right: 30,
              top: 300,
              child: MaterialButton(
                height: 45,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TypePage()));
                },
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "\t\tPropanopia\t\t",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            Positioned(
              left: 50,
              top: 410,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image3.png'),
              ),
            ),
            Positioned(
              left: 30,
              top: 560,
              child: MaterialButton(
                height: 45,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TypePage()));
                },
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "\t\tTritanophia\t\t",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            Positioned(
              right: 50,
              top: 410,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/image3.png'),
              ),
            ),
            Positioned(
              right: 30,
              top: 560,
              child: MaterialButton(
                height: 45,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TypePage()));
                },
                color: Color.fromARGB(255, 255, 255, 255),
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "\t\tTritanophia\t\t",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
          ],
        ),

// 11111111111111111111

        // child: Container(
        //   child: new Column(
        //     children: <Widget>[
        //       FadeAnimation(
        //           1,
        //           Text(
        //             "Choose your type of\ncolor blindness",
        //             textAlign: TextAlign.center,
        //             style: TextStyle(
        //                 color: Color.fromARGB(255, 255, 255, 255),
        //                 fontSize: 30,
        //                 fontWeight: FontWeight.bold),
        //           )),
        //       Align(
        //         alignment: Alignment.topLeft,
        //         child: MaterialButton(
        //           height: 45,
        //           onPressed: () {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) => ProgressTrackerPage()));
        //           },
        //           color: Color.fromARGB(255, 255, 255, 255),
        //           elevation: 0,
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(50)),
        //           child: Text(
        //             "Deuteranophia",
        //             style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        //           ),
        //         ),
        //       ),
        //       Align(
        //         alignment: Alignment.topRight,
        //         child: MaterialButton(
        //           height: 45,
        //           onPressed: () {
        //             Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                     builder: (context) => FitnessGuiderPage()));
        //           },
        //           color: Color.fromARGB(255, 255, 255, 255),
        //           elevation: 0,
        //           shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(50)),
        //           child: Text(
        //             "Propanopia",
        //             style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        //           ),
        //         ),
        //       ),
        //       MaterialButton(
        //         height: 45,
        //         onPressed: () {
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                   builder: (context) => WeatherAnalyticsPage()));
        //         },
        //         color: Color.fromARGB(255, 255, 255, 255),
        //         elevation: 0,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(50)),
        //         child: Text(
        //           "Tritanophia",
        //           style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        //         ),
        //       ),
        //       MaterialButton(
        //         height: 45,
        //         onPressed: () {
        //           Navigator.push(
        //               context,
        //               MaterialPageRoute(
        //                   builder: (context) => WeatherAnalyticsPage()));
        //         },
        //         color: Color.fromARGB(255, 255, 255, 255),
        //         elevation: 0,
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(50)),
        //         child: Text(
        //           "Tritanophia",
        //           style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),

// 222222222

        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: <Widget>[
        //     Expanded(
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: <Widget>[
        //           Column(
        //             children: <Widget>[
        //               FadeAnimation(
        //                   1,
        //                   Text(
        //                     "Choose your type of\ncolor blindness",
        //                     textAlign: TextAlign.center,
        //                     style: TextStyle(
        //                         color: Color.fromARGB(255, 255, 255, 255),
        //                         fontSize: 30,
        //                         fontWeight: FontWeight.bold),
        //                   )),
        //               // SizedBox(
        //               //   height: 10,
        //               // ),
        //               // FadeAnimation(
        //               //     1.2,
        //               //     Text(
        //               //       "Home Page",
        //               //       style: TextStyle(
        //               //           fontSize: 15, color: Colors.grey[700]),
        //               //     )),
        //             ],
        //           ),
        //           // Padding(
        //           //   padding: EdgeInsets.symmetric(horizontal: 40),
        //           //   child: Column(
        //           //     children: <Widget>[
        //           //       FadeAnimation(1.2, makeInput(label: "Email")),
        //           //       FadeAnimation(1.3,
        //           //           makeInput(label: "Password", obscureText: true)),
        //           //     ],
        //           //   ),
        //           // ),
        //           // FadeAnimation(
        //           //     1.2,
        //           //     Container(
        //           //       height: MediaQuery.of(context).size.height / 8,
        //           //       decoration: BoxDecoration(
        //           //           image: DecorationImage(
        //           //               image: AssetImage('assets/image1.jpg'))),
        //           //     )),
        //           Align(
        //             alignment: Alignment.topLeft,
        //             child: CircleAvatar(
        //               radius: 48,
        //               backgroundImage: AssetImage('assets/image1.png'),
        //             ),
        //           ),
        //           FadeAnimation(
        //               1.2,
        //               Padding(
        //                 padding: EdgeInsets.symmetric(horizontal: 40),
        //                 child: Container(
        //                   // width: 200,
        //                   // height: 200,
        //                   // child: stack(
        //                   //   children: <Widget>[
        //                   //     Align(
        //                   //       alignment: Alignment.topLeft,
        //                   //       child: Icon(Icons.access_time),
        //                   //     ),
        //                   // ),

        //                   //   children: <Widget>[
        //                   //   Align(
        //                   //   alignment: Alignment.topLeft,
        //                   //   child: Icon(Icons.access_time),),
        //                   padding: EdgeInsets.only(top: 3, left: 3),
        //                   alignment: Alignment.topLeft,
        //                   // decoration: BoxDecoration(
        //                   //     borderRadius: BorderRadius.circular(50),
        //                   //     border: Border(
        //                   //       bottom: BorderSide(color: Colors.black),
        //                   //       top: BorderSide(color: Colors.black),
        //                   //       left: BorderSide(color: Colors.black),
        //                   //       right: BorderSide(color: Colors.black),
        //                   //     )),
        //                   child: MaterialButton(
        //                     // minWidth: double.infinity,

        //                     height: 45,
        //                     onPressed: () {
        //                       Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   ProgressTrackerPage()));
        //                     },
        //                     color: Color.fromARGB(255, 255, 255, 255),
        //                     elevation: 0,
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(50)),
        //                     child: Text(
        //                       "Deuteranophia",
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.w600, fontSize: 18),
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //           // FadeAnimation(
        //           //     1.4,
        //           //     Container(
        //           //       height: MediaQuery.of(context).size.height / 8,
        //           //       decoration: BoxDecoration(
        //           //           image: DecorationImage(
        //           //               image: AssetImage('assets/image2.jpg'))),
        //           //     )),
        //           Align(
        //             alignment: Alignment.topRight,
        //             child: CircleAvatar(
        //               radius: 48,
        //               backgroundImage: AssetImage('assets/image2.png'),
        //             ),
        //           ),
        //           FadeAnimation(
        //               1.4,
        //               Padding(
        //                 padding: EdgeInsets.symmetric(horizontal: 40),
        //                 child: Container(
        //                   padding: EdgeInsets.only(top: 3, left: 3),
        //                   alignment: Alignment.topRight,
        //                   // decoration: BoxDecoration(
        //                   //     borderRadius: BorderRadius.circular(50),
        //                   //     border: Border(
        //                   //       bottom: BorderSide(color: Colors.black),
        //                   //       top: BorderSide(color: Colors.black),
        //                   //       left: BorderSide(color: Colors.black),
        //                   //       right: BorderSide(color: Colors.black),
        //                   //     )),
        //                   child: MaterialButton(
        //                     // minWidth: double.infinity,
        //                     height: 45,
        //                     onPressed: () {
        //                       Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   FitnessGuiderPage()));
        //                     },
        //                     color: Color.fromARGB(255, 255, 255, 255),
        //                     elevation: 0,
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(50)),
        //                     child: Text(
        //                       "Propanopia",
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.w600, fontSize: 18),
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //           // FadeAnimation(
        //           //     1.6,
        //           //     Container(
        //           //       height: MediaQuery.of(context).size.height / 8,
        //           //       decoration: BoxDecoration(
        //           //           image: DecorationImage(
        //           //               image: AssetImage('assets/image3.jpg'))),
        //           //     )),
        //           Align(
        //             alignment: Alignment.bottomLeft,
        //             child: CircleAvatar(
        //               radius: 48,
        //               backgroundImage: AssetImage('assets/image3.png'),
        //             ),
        //           ),
        //           FadeAnimation(
        //               1.6,
        //               Padding(
        //                 padding: EdgeInsets.symmetric(horizontal: 40),
        //                 child: Container(
        //                   padding: EdgeInsets.only(top: 3, left: 3),
        //                   alignment: Alignment.bottomLeft,
        //                   // decoration: BoxDecoration(
        //                   //     borderRadius: BorderRadius.circular(50),
        //                   //     border: Border(
        //                   //       bottom: BorderSide(color: Colors.black),
        //                   //       top: BorderSide(color: Colors.black),
        //                   //       left: BorderSide(color: Colors.black),
        //                   //       right: BorderSide(color: Colors.black),
        //                   //     )),
        //                   child: MaterialButton(
        //                     // minWidth: double.infinity,
        //                     height: 45,
        //                     onPressed: () {
        //                       Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) => TossSpinnerPage()));
        //                     },
        //                     color: Color.fromARGB(255, 255, 255, 255),
        //                     elevation: 0,
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(50)),
        //                     child: Text(
        //                       "Tritanophia",
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.w600, fontSize: 18),
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //           // FadeAnimation(
        //           //     1.8,
        //           //     Container(
        //           //       height: MediaQuery.of(context).size.height / 8,
        //           //       decoration: BoxDecoration(
        //           //           image: DecorationImage(
        //           //               image: AssetImage('assets/image3.jpg'))),
        //           //     )),
        //           Align(
        //             alignment: Alignment.bottomRight,
        //             child: CircleAvatar(
        //               radius: 48,
        //               backgroundImage: AssetImage('assets/image3.png'),
        //             ),
        //           ),
        //           FadeAnimation(
        //               1.8,
        //               Padding(
        //                 padding: EdgeInsets.symmetric(horizontal: 40),
        //                 child: Container(
        //                   padding: EdgeInsets.only(top: 3, left: 3),
        //                   alignment: Alignment.bottomRight,
        //                   // decoration: BoxDecoration(
        //                   //     borderRadius: BorderRadius.circular(50),
        //                   //     border: Border(
        //                   //       bottom: BorderSide(color: Colors.black),
        //                   //       top: BorderSide(color: Colors.black),
        //                   //       left: BorderSide(color: Colors.black),
        //                   //       right: BorderSide(color: Colors.black),
        //                   //     )),
        //                   child: MaterialButton(
        //                     // minWidth: double.infinity,
        //                     height: 45,
        //                     onPressed: () {
        //                       Navigator.push(
        //                           context,
        //                           MaterialPageRoute(
        //                               builder: (context) =>
        //                                   WeatherAnalyticsPage()));
        //                     },
        //                     color: Color.fromARGB(255, 255, 255, 255),
        //                     elevation: 0,
        //                     shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(50)),
        //                     child: Text(
        //                       "Tritanophia",
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.w600, fontSize: 18),
        //                     ),
        //                   ),
        //                 ),
        //               )),
        //           // FadeAnimation(
        //           //     1.8,
        //           //     Padding(
        //           //       padding: EdgeInsets.symmetric(horizontal: 40),
        //           //       child: Container(
        //           //         padding: EdgeInsets.only(top: 3, left: 3),
        //           //         decoration: BoxDecoration(
        //           //             borderRadius: BorderRadius.circular(50),
        //           //             border: Border(
        //           //               bottom: BorderSide(color: Colors.black),
        //           //               top: BorderSide(color: Colors.black),
        //           //               left: BorderSide(color: Colors.black),
        //           //               right: BorderSide(color: Colors.black),
        //           //             )),
        //           //         child: MaterialButton(
        //           //           minWidth: double.infinity,
        //           //           height: 60,
        //           //           onPressed: () {
        //           //             Navigator.push(
        //           //                 context,
        //           //                 MaterialPageRoute(
        //           //                     builder: (context) => SpeedGunPage()));
        //           //           },
        //           //           color: Color.fromARGB(255, 168, 123, 52),
        //           //           elevation: 0,
        //           //           shape: RoundedRectangleBorder(
        //           //               borderRadius: BorderRadius.circular(50)),
        //           //           child: Text(
        //           //             "Speed Gun",
        //           //             style: TextStyle(
        //           //                 fontWeight: FontWeight.w600, fontSize: 18),
        //           //           ),
        //           //         ),
        //           //       ),
        //           //     )),
        //           // FadeAnimation(
        //           //     1.9,
        //           //     Padding(
        //           //       padding: EdgeInsets.symmetric(horizontal: 40),
        //           //       child: Container(
        //           //         padding: EdgeInsets.only(top: 3, left: 3),
        //           //         decoration: BoxDecoration(
        //           //             borderRadius: BorderRadius.circular(50),
        //           //             border: Border(
        //           //               bottom: BorderSide(color: Colors.black),
        //           //               top: BorderSide(color: Colors.black),
        //           //               left: BorderSide(color: Colors.black),
        //           //               right: BorderSide(color: Colors.black),
        //           //             )),
        //           //         child: MaterialButton(
        //           //           minWidth: double.infinity,
        //           //           height: 60,
        //           //           onPressed: () {
        //           //             Navigator.push(
        //           //                 context,
        //           //                 MaterialPageRoute(
        //           //                     builder: (context) => HelpCenterPage()));
        //           //           },
        //           //           color: Color.fromARGB(255, 131, 88, 19),
        //           //           elevation: 0,
        //           //           shape: RoundedRectangleBorder(
        //           //               borderRadius: BorderRadius.circular(50)),
        //           //           child: Text(
        //           //             "Help Center",
        //           //             style: TextStyle(
        //           //                 fontWeight: FontWeight.w600, fontSize: 18),
        //           //           ),
        //           //         ),
        //           //       ),
        //           //     )),
        //           // FadeAnimation(
        //           //     2.0,
        //           //     Row(
        //           //       mainAxisAlignment: MainAxisAlignment.center,
        //           //       children: <Widget>[
        //           //         Text("Don't have an account?"),
        //           //         Text(
        //           //           "Sign up",
        //           //           style: TextStyle(
        //           //               fontWeight: FontWeight.w600, fontSize: 18),
        //           //         ),
        //           //       ],
        //           //     ))
        //         ],
        //       ),
        //     ),
        //     // FadeAnimation(
        //     //     1.2,
        //     //     Container(
        //     //       height: MediaQuery.of(context).size.height / 3,
        //     //       decoration: BoxDecoration(
        //     //           image: DecorationImage(
        //     //               image: AssetImage('assets/background.png'),
        //     //               fit: BoxFit.cover)),
        //     //     ))
        //   ],
        // ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
