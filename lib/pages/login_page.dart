import 'package:flutter/material.dart';
import 'package:teest/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  static const String routeName = "/login";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  final _userNameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.blue,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image(image: AssetImage('assets/coding.jpg'),
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
            Center(
              child: SingleChildScrollView(
                child: Card(
                  shadowColor: Colors.grey,
                  elevation: 20,
                  child: Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          // SizedBox(
                          //   height: 20,
                          // ),
                          TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _userNameController,
                            validator: (s) {

                            },
                            decoration: InputDecoration(
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide(width: 50),
                              // ),
                              hintText: "abc@gmail.com",
                              labelText: "Email",
                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            validator: (s) {

                            },
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            controller: _passwordController,
                            decoration: InputDecoration(
                              // border: OutlineInputBorder(
                              //   borderSide: BorderSide(width: 50),
                              // ),
                              labelText: "Password",
                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                formKey.currentState?.save();
                                formKey.currentState?.validate();
                                // Navigator.push((context), MaterialPageRoute(builder: (context) => HomePage()));
                                Navigator.pushNamed(context, HomePage.routeName);
                              },
                              child: Text("Sign In"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue[100],
                                foregroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
