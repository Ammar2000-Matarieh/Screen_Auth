import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final email = TextEditingController();
  final password = TextEditingController();

  bool isShowEye = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 40),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Text(
                  "Hi, Welcome Back!",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Text(
                  "Please Login to ypur Account",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                  hintText: 'yourEmail@mail.com',
                  labelText: 'Email Address',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(18))),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              controller: password,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: isShowEye
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off)),
                  hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                  labelText: 'Password',
                  hintText: 'your password here',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(18))),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  minimumSize: Size(340, 55),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
          SizedBox(
            height: 17,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "________________ Or Login With _______________",
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    elevation: 0,
                    backgroundColor: Colors.white,
                    minimumSize: Size(170, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.facebook),
                      SizedBox(width: 8),
                      Text("FaceBook")
                    ],
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black),
                    elevation: 0,
                    backgroundColor: Colors.white,
                    minimumSize: Size(170, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.mail_rounded),
                      SizedBox(width: 8),
                      Text("Gmail")
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not signed up yet? ",
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              SizedBox(
                width: 4,
              ),
              TextButton(onPressed: () {}, child: Text("Register")),
            ],
          )
        ]),
      ),
    ));
  }
}
