import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<StatefulWidget> createState() {
    return ResetPasswordPage();
  }
}

class ResetPasswordPage extends State<ResetPassword> {
  var emailAddressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Wrap everything inside GestureDetector to dismiss keyboard
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // Dismiss the keyboard when tapping outside
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reset password', style: TextStyle(color: Colors.blue),),
        ),
        resizeToAvoidBottomInset: true, // Resizes layout to avoid overlap with the keyboard
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 35, right: 35),
            child: Stack(
                children: [Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      const Text(
                        'Enter the email associated with your account',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Email Label
                      const Text(
                        'Email address',
                        style: TextStyle(),
                      ),
                      const SizedBox(height: 35),

                      // Email Input Field
                      TextField(
                        controller: emailAddressController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox(height: 500)),

                      // Send Button aligned to bottom-right
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 100,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add action here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Send',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20), // Adds spacing
                    ],
                  ),
                ),]
            ),
          ),
        ),
      ),
    );
  }
}


