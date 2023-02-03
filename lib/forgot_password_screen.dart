import 'package:flutter/material.dart';



class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<ForgotPasswordScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Container(
                alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(top: 55, left: 10, right: 10, bottom: 10),
                child: const Text(
                  'Forgot',
                  style: TextStyle(
                      color: Color(0xFFC8E6C9),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
                
            Container(
                alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: const Text(
                  'password',
                  style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
                Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: const Text(
                 "Enter the email address associated with your "
                    "account. We'll send you a link to reset your"
                    " password",
                  style:
                      TextStyle(fontSize: 20),
                )),
                  
           Container(    
              padding: const EdgeInsets.only(top: 19,left: 15,bottom: 1,right: 20),  
              child: Text ("EMAIL ADDRESS",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 8),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10), 
              child: TextField(
                decoration: InputDecoration(
                  labelText: '',   
                  floatingLabelStyle: TextStyle(fontSize: 10),
                ),
              ),
            ),
                Expanded(child:SizedBox() ,
                ),
            Container(
                height: 70,
               padding: const EdgeInsets.only( left: 10, right: 10, bottom: 20),
                child: ElevatedButton(
                  child: const Text('SUBMINT'),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                  textStyle: const TextStyle(fontSize: 12),
                    primary: Color (0xFFC8E6C9),
                  ),
                  onPressed: () {
                    // print(nameController.text);
                    // print(passwordController.text);
                  },
                )),
           
          ]),
        ),
      ),
    );
  }
}
