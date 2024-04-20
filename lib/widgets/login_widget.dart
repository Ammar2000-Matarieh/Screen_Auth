import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final email = TextEditingController();
  final password = TextEditingController();
  final keyApp = GlobalKey<FormState>();
  bool isShowEye = false;

  @override
  Widget build(BuildContext context) => SafeArea(
      child: Scaffold(
          appBar: AppBar(automaticallyImplyLeading: false),
          body: SingleChildScrollView(
              child: Form(
                key: keyApp,
                child: Column(children: [
                            const SizedBox(height: 40),
                            const Row(children: [
                Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text("Hi, Welcome Back!",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black54)))
                            ]),
                            const SizedBox(height: 8),
                            const Row(children: [
                Padding(
                    padding: EdgeInsets.only(left: 22),
                    child: Text("Please Login to your Account",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey)))
                            ]),
                            const SizedBox(height: 20),
                            Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    validator: (String? email) {
                      if(email == null || email.isEmpty) {
                        return 'Please Enter a valid email';
                      }
                      return null;
                    },
                      controller: email,
                      decoration: InputDecoration(
                          hintStyle:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                          hintText: 'yourEmail@mail.com',
                          labelText: 'Email Address',
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(18))))),
                            const SizedBox(height: 15),
                            Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    validator: (String? password) {
                      if(password == null || password.isEmpty) {
                        return 'Please Enter a valid password';
                      }
                      return null;
                    },
                      controller: password,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {},
                              icon: isShowEye
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.visibility_off)),
                          hintStyle:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                          labelText: 'Password',
                          hintText: 'your password here',
                          border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(18))))),
                            const SizedBox(height: 70),
                            ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      minimumSize: const Size(340, 55),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    if(keyApp.currentState!.validate()) {
                    }
                  },
                  child: const Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 18))),
                            Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text("Forget Password?",
                            style: TextStyle(fontSize: 14, color: Colors.black)))
                  ]),
                            const SizedBox(height: 17),
                            const Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text("________________ Or Login With _______________",
                      style: TextStyle(color: Colors.grey, fontSize: 13))),
                            const SizedBox(height: 20),
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
                                    borderRadius: BorderRadius.circular(9))),
                            onPressed: () {},
                            child: const Row(children: [
                              Icon(Icons.facebook),
                              SizedBox(width: 8),
                              Text("FaceBook")
                            ])),
                        const Spacer(),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                side: const BorderSide(color: Colors.black),
                                elevation: 0,
                                backgroundColor: Colors.white,
                                minimumSize: Size(170, 48),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9))),
                            onPressed: () {},
                            child: const Row(children: [
                              Icon(Icons.mail_rounded),
                              SizedBox(width: 8),
                              Text("Gmail")
                            ]))
                      ])),
                            SizedBox(height: 60),
                            Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Not signed up yet? ",
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                    const SizedBox(width: 4),
                    TextButton(onPressed: () {}, child: Text("Register"))
                  ])
                          ]),
              ))));
}
