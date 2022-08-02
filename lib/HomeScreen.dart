import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        body: Container(
            height: double.infinity,
            width: double.infinity,
          child: Stack (
            children: [
              Column(
               crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 300,
                    width: double.infinity,
                    color: Color(0xff123456),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [

                            CircleAvatar(
                              maxRadius: 46,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                maxRadius: 70,

                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Welcome Back',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 28,
                                    letterSpacing: 4,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Sarthak Pujari',
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    fontFamily: 'Hind',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20,
                                    letterSpacing: 4,
                                  ),
                                ),


                              ],
                            )

                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 400,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                                'Configure your profile',
                              style: TextStyle(
                                letterSpacing: 2,
                                fontFamily: 'Hind',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(21, 71, 123, 1)
                              ),
                            ),
                            style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 70,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Your Links',
                        style: const TextStyle(
                          color: Colors.black,

                          fontFamily: 'Hind',
                          fontWeight: FontWeight.w400,
                          fontSize: 22,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Card(
                            elevation: 5,
                            child: Container(
                              height: 100.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 100.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(7),
                                            topLeft: Radius.circular(7)
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage('assets/youtube.png'),
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Youtube",
                                            style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),

                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "https://www.youtube.com/watch",
                                            style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Colors.grey
                                            ),

                                          ),


                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  PopupMenuButton(
                                    //don't specify icon if you want 3 dot menu
                                    color: Colors.blueGrey,
                                    itemBuilder: (context) => [
                                      PopupMenuItem<int>(
                                        value: 0,
                                        child: Text("Setting",style: TextStyle(color: Colors.white),),
                                      ),
                                    ],
                                    onSelected: (item) => {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            child: Container(
                              height: 100.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 100.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(7),
                                            topLeft: Radius.circular(7)
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage('assets/youtube.png'),
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Youtube",
                                            style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),

                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "https://www.youtube.com/watch",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),

                                          ),


                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  PopupMenuButton(
                                     //don't specify icon if you want 3 dot menu
                                    color: Colors.blueGrey,
                                    itemBuilder: (context) => [
                                      PopupMenuItem<int>(
                                        value: 0,
                                        child: Text("Setting",style: TextStyle(color: Colors.white),),
                                      ),
                                    ],
                                    onSelected: (item) => {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            child: Container(
                              height: 100.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    height: 100.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(7),
                                            topLeft: Radius.circular(7)
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage('assets/youtube.png'),
                                        )
                                    ),
                                  ),
                                  Container(
                                    height: 100,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "Youtube",
                                            style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                            ),

                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "https://www.youtube.com/watch",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Colors.grey
                                            ),

                                          ),


                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  PopupMenuButton(
                                    //don't specify icon if you want 3 dot menu
                                    color: Colors.blueGrey,
                                    itemBuilder: (context) => [
                                      PopupMenuItem<int>(
                                        value: 0,
                                        child: Text("Setting",style: TextStyle(color: Colors.white),),
                                      ),
                                    ],
                                    onSelected: (item) => {},
                                  ),

                                ],

                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        _loginBtn(),
                      ],
                    ),
                  )


                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}
Widget _loginBtn() {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
      color: Color(0xff123456),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: TextButton(
      onPressed: () => {},
      child: Text(
        "Add new link",
        style:  const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 24,
          fontFamily: 'Hind',
          letterSpacing: 0.04,
        ),
      ),
    ),
  );
}
