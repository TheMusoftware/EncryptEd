import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});

  Future<void> signInWithGoogle() async {

    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
     // cancel login via google handle here
      return;
    }
    // Firebase auth
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset("assets/logo.png", height: 200),
              const Spacer(),
              const SizedBox(height: 300),
              ElevatedButton(
                onPressed: () {
                  // add log in
                  Navigator.pushReplacementNamed(context, '/home');

                },
                style: ElevatedButton.styleFrom(
                  elevation: 1,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 48),
                  shape: const StadiumBorder(),
                ),
                child: const Text("Sign In"),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // add sign up
                  Navigator.pushReplacementNamed(context, '/home');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 48),
                  shape: const StadiumBorder(),
                ),
                child: const Text("Sign Up"),
              ),
              const SizedBox(height: 16.0),
              TextButton.icon(
                onPressed: /*signInWithGoogle,*/ (){ Navigator.pushReplacementNamed(context, '/home');
                },
                icon: Image.asset(
                  "assets/google_logo.png",
                  height: 24,
                ),
                label: const Text("Sign in with Google"),
                style: TextButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                ),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
