import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),body: Container(
        child: Column(
          children: [
            _username(),
            _password(),
            _loginbutton(context)
          ],
        ),
      ),
      ),
    );
  }
}

Widget _username(){
  return Container(
    padding: EdgeInsets.all(10),
    child: TextFormField(
      decoration: InputDecoration(
        hintText: "Input ur username",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.blue)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red)
        )
      ),
    ),
  );
}

Widget _password(){
  return Container(
    padding: EdgeInsets.all(10),
    child: TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Input ur password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.blue)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)
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
      onPressed: (){},
      child: Text("Login"),
    ),
  );
}