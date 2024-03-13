import 'package:flutter/material.dart';
import 'package:pertemuan_2/navigation.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login Page"),
          ),
          body: SingleChildScrollView(
            child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Column(
                children: [
                  FlutterLogo(size: 100),
                  _username(),
                  _password(),
                  _loginbutton(context)
                ],
              ),
            ),
                    ),
          ),
        ),
      );
  }

  Widget _username(){
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        enabled : true,
        onChanged: (value){
          username = value;
        },
        decoration: InputDecoration(
            hintText: "Input ur username",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.blue)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: (isLogin) ? Colors.green : Colors.red)
            )
        ),
      ),
    );
  }

  Widget _password(){
    return Container(
      padding: EdgeInsets.all(10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          password = value;
        },
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Input ur password",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.blue)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: (isLogin) ? Colors.green : Colors.red)
            )
        ),
      ),
    );
  }

  Widget _loginbutton(context){
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: (isLogin) ? Colors.green : Colors.red
        ),
        onPressed: (){
          String text = "";
          if(username=='admin' && password=='123'){
            setState((){
              text = 'Login Success';
              isLogin = true;
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return Navigation(message: username);
              }));
            });
          }else{
            setState((){
              text = 'Login Failed';
              isLogin = false;
            });
          }
          SnackBar snackBar = SnackBar(
              content: Text(text)
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Text("Login"),
      ),
    );
  }
}

