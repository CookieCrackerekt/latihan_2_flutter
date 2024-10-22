import 'package:flutter/material.dart';
import 'package:latihan_2/ui/beranda.dart';

class Login extends StatefulWidget {
  const Login({Key? key}):super(key: key);
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
    final _formKey = GlobalKey<FormState>();
    final _usernameCtrl = TextEditingController();
    final _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login Admin",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              SizedBox(height: 20),
              Center(
                child: Form(
                  key: _formKey,
                  child: Container(
                    width:  MediaQuery.of(context).size.height/1.3,
                    child: Column(
                      children: [
                        _usernameTextField(),SizedBox(height: 20),
                        _passwordTextField(),SizedBox(height: 40),
                        _tombolLogin()],
                    ),
                  ),
                ),
              )
            ],
          ),          
        )),
      ),
    );
  }

  Widget _usernameTextField(){
    return TextField(
        decoration: const InputDecoration(labelText: "Username"),
        controller: _usernameCtrl,
    );
  }

  Widget _passwordTextField(){
    return TextField(
        decoration: const InputDecoration(labelText: "Password"),
        obscureText: true,
        controller: _passwordCtrl,
    );
  }

  Widget _tombolLogin(){
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(child: const Text("Login"),
        onPressed:(){
          Navigator.push(
                context, MaterialPageRoute(builder: (context) => Beranda()));
        } ),
    );
  }
}