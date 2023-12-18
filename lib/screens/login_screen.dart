import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.lock, color: Colors.deepPurple, size: 100,),
            SizedBox(height: 15,),

            Text("Login", style: TextStyle(color: Colors.deepPurple, fontSize: 40, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Text("Welcome back dear user😍", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter E-mail",
                    prefixIcon: Icon(Icons.email, color: Colors.deepPurple,),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurple
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: isHidden,
                decoration: InputDecoration(
                    hintText: "********",
                    prefixIcon: Icon(Icons.vpn_key, color: Colors.deepPurple,),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                        isHidden = !isHidden;
                        });
                    },
                      icon: Icon(isHidden ? Icons.visibility_off : Icons.visibility, color: Colors.deepPurple,),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurple
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?")
                ],
              ),
            ),
            SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                print("Pressed!");
              },
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Center(child: Text("Sign In", style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  Text("Register now!", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
