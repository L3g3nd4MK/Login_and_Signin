import 'package:flutter/material.dart';
import 'package:login_and_signup/screens/signup_page.dart';
import 'package:login_and_signup/Widget/CustomScaffold.dart';
import '../theme/theme.dart';



class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formSignInPageKey = GlobalKey<FormState>();
  bool rememberPassword = true;
  @override
  Widget build(BuildContext context){
    return CustomScaffold(
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(
              height: 10,
            ),
          ),
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formSignInPageKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.w900,
                          color: lightColorScheme.primary,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (e) => const SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: lightColorScheme.primary,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),

                      TextFormField(
                        validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Please enter Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('Email'),
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        validator: (value){
                          if (value == null || value.isEmpty){
                            return 'Please enter Password';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          hintText: 'Enter Password',
                          hintStyle: const TextStyle(
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: rememberPassword,
                                onChanged: (bool? value){
                                  setState(() {
                                    rememberPassword = value!;
                                  });
                                },
                                activeColor: lightColorScheme.primary,
                              ),
                              const Text(
                                'Remember me',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            child: Text(
                              'Forgot password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: lightColorScheme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){
                            if (_formSignInPageKey.currentState!.validate() &&
                                rememberPassword){
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processing Data'),
                                ),
                              );
                            }else if (!rememberPassword) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        'Please agree to the processing of personal data'
                                    )),
                              );
                            }
                          },
                          child: const Text('Sign in'),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),

                      const SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
              ),
            ),),
        ],
      ),
    );
  }
}
