import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final emailcontroller = TextEditingController();
final passwordcontroller = TextEditingController();
final formkey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final csize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 200, 226, 224),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'NODE LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Container(
              height: csize.height * 0.3,
              width: csize.width,
              child: Lottie.asset('animation/1.json'),
            ),
            TextFormField(
              controller: emailcontroller,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: const TextStyle(fontSize: 20, color: Colors.white),
                  filled: true,
                  fillColor: const Color.fromARGB(136, 0, 59, 77),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 217, 255))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 217, 255))),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red))),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: passwordcontroller,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(fontSize: 20, color: Colors.white),
                  filled: true,
                  fillColor: const Color.fromARGB(136, 0, 59, 77),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 217, 255))),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 0, 217, 255))),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red))),
            ),
          ]),
        ),
      ),
    );
  }
}
