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
            const Icon(Icons.lock, color: Colors.deepPurple, size: 100,),
            const SizedBox(height: 15,),

            const Text("Login", style: TextStyle(color: Colors.deepPurple, fontSize: 40, fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            const Text("Welcome back dear user😍", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
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
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: isHidden,
                decoration: InputDecoration(
                    hintText: "********",
                    prefixIcon: const Icon(Icons.vpn_key, color: Colors.deepPurple,),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                        isHidden = !isHidden;
                        });
                    },
                      icon: Icon(isHidden ? Icons.visibility_off : Icons.visibility, color: Colors.deepPurple,),
                    ),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurple
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 2
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    )
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?")
                ],
              ),
            ),
            const SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                print("Pressed!");
              },
              child: Container(
                width: double.infinity,

                decoration: const BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Center(child: Text("Sign In", style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
            ),
            const SizedBox(height: 15,),
            const Padding(
              padding: EdgeInsets.only(right: 20),
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
