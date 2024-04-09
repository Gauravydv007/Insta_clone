import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


import 'dart:developer' as devtools show log;

import 'package:instagram_clone001/state/auth/backend/authenticator.dart';
import 'package:instagram_clone001/state/auth/models/auth_result.dart';
import 'package:instagram_clone001/state/auth/providers/auth_state_provider.dart';
import 'package:instagram_clone001/state/auth/providers/is_logged_in_provider.dart';
import 'package:instagram_clone001/views/components/loading/loading_screen.dart';

extension Log on Object {
  void log() => devtools.log(toString());
}

// when we are already login 
class MainView extends StatelessWidget {
  const MainView({Key ? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Insta-Gram'),
      ),
      body:Consumer(
        builder:(_, ref, child) {
          return TextButton(
        onPressed: () async{
          // LoadingScreen.instance().show(context: context, text: 'Hello Guys');
           await ref.read(authStateProvider.notifier).logOut();


        },
        child: const Text('LogOut'),
      );
        
      },)
      

          
      


    );
  }
}

// when we are not already logged in 
class LoginView extends ConsumerWidget {
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login View'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: ref.read(authStateProvider.notifier).loginWithGoogle,
            
            // () async{
            //   ref.read(authStateProvider.notifier).loginWithGoogle();
            //   final result = await Authenticator().loginWithGoogle();
            //   result.log();
            //   print(result);


            //       // Check if the login is successful
            //   if (result == AuthResult.success) {
            //     // Navigate to MainView
            //     // Navigator.pushReplacement(
            //     //   context,
            //     //   MaterialPageRoute(builder: (context) => MainView()),
            //     // );
            //   }
      
            // }, 

            
            child: Text('Sign In with Google'),
            ),
      
            
      
      
      ],
      ),
    );
  }
}