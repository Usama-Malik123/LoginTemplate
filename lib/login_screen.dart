import 'package:flutter/material.dart';
//import 'package:flutter_screen/dashboard.dart';
import 'package:flutter_screen/forgot_password_screen.dart';
import 'create_new_account.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool _isObscure = true;
  @override
  void showAlertDialog(
    String text,
    String text1,
  ) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(text),
        content: Text(text1),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                  .pop(); // dismisses only the dialog and returns nothing
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/example.png'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(
                  top: 55, left: 10, right: 10, bottom: 10),
              child: const Text(
                'Welcome to',
                style: TextStyle(
                    color: Color(0xFFC8E6C9),
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: const Text(
                  'MBE CPA',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.only(
                  top: 19, left: 15, bottom: 1, right: 20),
              child: Text(
                "EMAIL ADDRESS",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 8),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: '',
                  floatingLabelStyle: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 19, left: 15, bottom: 1, right: 20),
              child: Text(
                "PASSWORD",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: TextField(
                  controller: passwordController,
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: "",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      showAlertDialog(
                        "Notworking",
                        "guest in under development",
                      );
                    },
                    child: Text(
                      'Continue as Guest',
                      style: TextStyle(color: Colors.yellow[400]),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen()),
                      );
                    },
                    child: Text(
                      'forgot password',
                      style: TextStyle(color: Colors.green[100]),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                    child: const Text('SIGN IN'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)),
                      textStyle: const TextStyle(fontSize: 12),
                      primary: Color(0xFFC8E6C9),
                    ),
                    onPressed: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewAccountScreen()),
                    );
                    })),
            Padding(
              padding: const EdgeInsets.only(top: 11, left: 10, right: 10),
              child: OutlinedButton(
                onPressed: () {
                  if (emailController.text == "") {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text("Email field is empty"),
                      ),
                    );
                  } else if (passwordController.text == "") {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text("password field is empty"),
                      ),
                    );
                  } else if (!RegExp(
                          r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                      .hasMatch(emailController.text)) {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text("please enter valid email"),
                      ),
                    );
                  } else if (passwordController.text.length < 8) {
                    final scaffold = ScaffoldMessenger.of(context);
                    scaffold.showSnackBar(
                      SnackBar(
                        content: Text("password should be 8 char"),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateNewAccountScreen()),
                    );
                  }
                  ;
                },
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'CREATE NEW ACCOUNT',
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ),
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 19.0, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void click(bool bool) {}
}
