import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(milliseconds: 1150));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        // color: Colors.white,
        child: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),

            Image.asset(
              "assets/images/hey.png",
              fit: BoxFit.cover,
            ),

            const SizedBox(
              height: 10.0,
            ),

            Text(
              "Welcome $name",
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 28,
                // color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 10.0,
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username is missing";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),

                const SizedBox(
                  height: 10.0,
                ),

                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password cannot be empty";
                    } else if (value.length < 2) {
                      return "Your password is not strong please reset your password and Get strong password";
                    }
                    return null;
                  },
                ),

                const SizedBox(
                  height: 40.0,
                ),
                InkWell(
                  onTap: () => moveToHome(context),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton
                        ? const Icon(Icons.done, color: Colors.white)
                        : const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8)),
                  ),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
                //   },
                //   style:
                //       TextButton.styleFrom(minimumSize: const Size(150, 40)),
                //   child: const Text("Login"),
                // )
              ]),
            ),
            // mero style below

            // const SizedBox(
            //   height: 250.0,
            // ),
          ],
        ),
      ),
    )

        //  text on center code below
        // child: Center(
        //   child: Text(
        //     "login page",
        //     style: TextStyle(
        //       fontSize: 20,
        //       color: Colors.blue,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
        );
  }

  text(String s, {required TextStyle style}) {}
}
