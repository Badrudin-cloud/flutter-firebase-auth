import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({super.key});

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  TextEditingController _emailController = TextEditingController();

  clearField(){
    _emailController.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_reset, color: Colors.deepPurple, size: 100,),
            const SizedBox(height: 15,),

            const Text("Login", style: TextStyle(color: Colors.deepPurple, fontSize: 40, fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            const Text("Use your e-mail to reset password!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _emailController,
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

            GestureDetector(
              onTap: () async{
                try{
                  await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text);
                  clearField();
                }catch(e){
                  print(e);
                }
              },
              child: Container(
                width: double.infinity,

                decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(15))
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Center(child: Text("Reset", style: TextStyle(fontSize: 20, color: Colors.white),)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
