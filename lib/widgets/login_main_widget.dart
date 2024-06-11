import 'package:flutter/material.dart';

class LoginWidgetMain extends StatefulWidget {
  const LoginWidgetMain({super.key});

  @override
  State<LoginWidgetMain> createState() => _LoginWidgetMainState();
}

class _LoginWidgetMainState extends State<LoginWidgetMain> {
  final email = TextEditingController();
  final password = TextEditingController();
  final keyLogin = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Form(
          key: keyLogin,
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Row(children: [
                Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text("Login",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)))
              ]),
              const SizedBox(height: 7),
              Row(children: [
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Sign in you already have an account. ",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade900)))
              ]),
              const SizedBox(height: 20),
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Email Address"))),
              const SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: "Password",
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade900),
                        ))
                  ]),
              const SizedBox(height: 25),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(340, 55),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {},
                  child: const Text("Login ",
                      style: TextStyle(color: Colors.white, fontSize: 17))),
              const SizedBox(height: 20),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    TextButton(onPressed: () {}, child: const Text("Register",style: TextStyle(
                      color: Colors.blue
                    ),))
                  ]),
            ],
          ),
        ),
      ),
    ));
  }
}
