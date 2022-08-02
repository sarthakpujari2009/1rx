import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
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
                          'Verify Your',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Hind',
                            fontWeight: FontWeight.w600,
                            fontSize: 44,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Account',
                          style: const TextStyle(
                            color: Color(0xff123456),
                            fontFamily: 'Hind',
                            fontWeight: FontWeight.w600,
                            fontSize: 44,
                          ),
                        ),
                          SizedBox(
                            height: 40,
                          ),
                          _loginLabel(),
                        SizedBox(
                          height: 40,
                        ),

                          VerificationCode(
                            length: 6,
                            textStyle: TextStyle(fontSize: 20, color: Colors.black),
                            underlineColor: Colors.black,
                            keyboardType: TextInputType.number,
                            underlineUnfocusedColor: Colors.black,
                            onCompleted: (value) {
                              setState(() {
                              });
                            },
                            onEditing: (value) {},
                          ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 40,
                            ),
                            _signUpLabel("didn't get the otp ? ",
                                Color.fromRGBO(40, 40, 40,0.7)),

                            _signUp2Label("Resend OTP", const Color(0xff134478)),
                          ],
                        ),
                        const SizedBox(
                          height: 260,
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
        fontSize: 18,
        color: Color.fromRGBO(40, 40, 40,0.7),
        fontFamily: 'Hind'
    ),
  );

}
Widget _signUp2Label(String label, Color textColor) {
  return Text(
    label,
    style:  const TextStyle(
        fontSize: 18,
        color: Color(0xff134478),
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
        "Next",
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
            "Enter your OTP",
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

