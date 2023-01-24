import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AmazonPrime(),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(
          Icons.chevron_left,
          size: 32,
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(38, 38, 38, 1.0),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  print("Sign in Button Tapped.");
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  print("Recover Password Button Tapped.");
                },
                child: Text(
                  "Recover Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              )
            ],
          ),
        ),
        color: Color.fromRGBO(19, 19, 19, 1.0),
      ),
    );
  }
}

class AmazonPrime extends StatelessWidget {
  const AmazonPrime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset('assets/Logo/logo.png',width: 70,height: 80,),
        ),
        leading: new Center(
          child: new InkWell(
            child: new Text(
              'Back',
              style: TextStyle(color: Colors.lightBlue, fontSize: 18),
            ),
          ),
        ),
        actions: [
          Icon( Icons.refresh, ),
          SizedBox(width: 10,)
        ],
        backgroundColor: Color.fromRGBO(14, 22, 30, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 14,),
            Text("Create account",
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 14,),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Name",),
            ),
            SizedBox(height: 14,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Your email address",),
            ),
            SizedBox(height: 14,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Create a password",),
            ),
            SizedBox(height: 14,),
            Row(
              children: [
                Icon(Icons.priority_high,
                  color: Colors.lightBlue,
                  size: 20,
                ),
                Text("Passwords must be at least 6 characters.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: 54,),
            ElevatedButton(
              onPressed: (){
              print("Create your Amazon account tapped!");
            },
              child: Text(
              "Create your Amazon account",
                style: TextStyle(
                  color: Colors.white,
                ),
            ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(12,121,175, 1.0),
                  minimumSize: Size.fromHeight(50),
              ),
            ),
            SizedBox(height: 14,),
            Text("By Creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website.",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromRGBO(123,144,156, 1.0)
              ),
            ),
            SizedBox(height: 14,),
            Text("Already have an account?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 14,),
            ElevatedButton(
              onPressed: (){
                print("Sign-In now tapped!");
              },
              child: Text(
                "Sign-In now",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(66,81,101, 1.0),
                minimumSize: Size.fromHeight(50),
              ),
            ),
            SizedBox(height: 104,),
            Text("@ 1996-2021, Amazon.com, lnc. or its affiliates",
              style: TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(123,144,156, 1.0)
              ),
            ),
          ],
        ),
        color: Color.fromRGBO(14, 22, 30, 1.0),
      ),
    );
  }
}
