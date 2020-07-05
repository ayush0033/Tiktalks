import 'package:chatapp/widget/widget.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMain(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Spacer(),
            Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'Temporarily Closed, Work In Progress',
                      style: biggerTextStyle(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (val) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(val)
                        ? null
                        : "Please Enter Correct Email";
                  },
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("Email ID"),
                ),
                TextFormField(
                  obscureText: true,
                  validator: (val) {
                    return val.length > 6
                        ? null
                        : "Enter Password 6+ characters";
                  },
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("Enter New Password"),
                ),
                TextFormField(
                  obscureText: true,
                  validator: (val) {
                    return val.length > 6
                        ? null
                        : "Enter Password 6+ characters";
                  },
                  style: simpleTextStyle(),
                  decoration: textFieldInputDecoration("Re-Enter New Password"),
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          colors: [
                            Colors.redAccent[400],
                            Colors.redAccent[200]
                            //const Color(0xff007EF4),
                            //const Color(0xff2A75BC)
                          ],
                        )),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Login Now With New Password",
                      style: biggerTextStyle(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
