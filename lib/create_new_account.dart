import 'package:flutter/material.dart';


class CreateNewAccountScreen extends StatefulWidget {
  const CreateNewAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewAccountScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<CreateNewAccountScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  bool _pObscure = true;
  bool _cpObscure = true;
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
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/example.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 55, left: 10, right: 10, bottom: 10),
                child: const Text(
                  "Register",
                  style: TextStyle(
                      color: Color(0xFFC8E6C9),
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: const Text(
                  "new account",
                  style:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
            Container(    
              padding: const EdgeInsets.only(top: 19,left: 15,bottom: 1,right: 20),  
              child: Text ("PASSWORD",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 8),
              ),
            ),
              Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: TextField(
            obscureText: _pObscure,
            decoration: InputDecoration(
              labelText: "",
              suffixIcon: IconButton(
                icon: Icon(
                  _pObscure ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _pObscure = !_pObscure;
                  });
                },
              ),
            ),
          ),
        ),),
            Container(    
              padding: const EdgeInsets.only(top: 19,left: 15,bottom: 1,right: 20),  
              child: Text ("CONFIRM PASSWORD",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 8),
              ),
            ),
              Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: TextField(
            obscureText: _cpObscure,
            decoration: InputDecoration(
              labelText: "",
              suffixIcon: IconButton(
                icon: Icon(
                  _pObscure ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _cpObscure = !_cpObscure;
                  });
                },
              ),
            ),
          ),
        ),),
                Expanded(child:SizedBox() ,
                ),
            Container(
                height: 70,
                padding: const EdgeInsets.only( left: 10, right: 10, bottom: 20),
                //padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                child: ElevatedButton(
                  child: const Text('CREATE NEW ACCOUNT'),
                  
                  style: 
                  ElevatedButton.styleFrom (shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                textStyle: const TextStyle(fontSize: 12),
          
                    primary: Color(0xFFC8E6C9),

                  ), 
                 
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateNewAccountScreen()),
                    );
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