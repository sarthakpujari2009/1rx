import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transparent Login App',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Stack(
              children: [


                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 120,
                        ),
                        Text(
                          'Welcome to ',
                          style: const TextStyle(
                            color: Color.fromRGBO(00, 00, 00,0.7),
                            fontFamily: 'Hind',
                            fontWeight: FontWeight.w600,
                            fontSize: 44,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'OneRx',
                          style: const TextStyle(
                            color: Color(0xff123456),
                            fontFamily: 'Hind',
                            fontWeight: FontWeight.w600,
                            fontSize: 44,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _loginLabel(),
                        const SizedBox(
                          height: 40,
                        ),
                        _labelTextInput("UserName", "UserName", false),
                        const SizedBox(
                          height: 40,
                        ),
                        _labelTextInput("Password", "Password", false),
                        const SizedBox(
                          height: 40,
                        ),
                        _labelTextInput("Confirm Password", "Confirm Password", false),
                        const SizedBox(
                          height: 40,
                        ),
                        _labelTextInput("Confirm Password", "Confirm Password", false),
                        const SizedBox(
                          height: 60,
                        ),
                        _loginBtn(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _signUpLabel(String label, Color textColor) {
  return Text(
    label,
    style:  const TextStyle(
        color: Color.fromRGBO(40, 40, 40,0.7),
        fontWeight: FontWeight.bold,
        fontSize: 18,
        fontFamily: 'Hind'
    ),
  );

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
        "Create",
        style:  const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
          fontSize: 24,
          fontFamily: 'Hind',
        ),
      ),
    ),
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      TextField(
        obscureText: isPassword,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color.fromRGBO(94, 94, 94,0.7),
            fontWeight: FontWeight.w400,
            fontSize: 20,
            fontFamily: 'Hind',
          ),

          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(94, 94, 94,0.7),),
          ),
        ),
      ),
    ],
  );
}

Widget _loginLabel() {
  return Align(
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Text(
            "Create your account",
            style:  const TextStyle(
              color: Color.fromRGBO(40, 40, 40,0.7),
              fontWeight: FontWeight.w500,
              fontSize: 34,
              fontFamily: 'Hind',
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      )
  );
}

