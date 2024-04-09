import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instagram_clone001/state/auth/constants/constants.dart';
import 'package:instagram_clone001/state/auth/models/auth_result.dart';

import 'package:instagram_clone001/state/posts/typedefs/user_id.dart';

class Authenticator {

  const Authenticator();

  UserId? get userId => FirebaseAuth.instance.currentUser?.uid;
  bool get isAlreadyLoggedIn => userId != null;
  String get displayName => FirebaseAuth.instance.currentUser?.displayName ?? '';
  String? get email => FirebaseAuth.instance.currentUser?.email;

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();  // function to sign out with firebase
    await GoogleSignIn().signOut();      // func. to logout through google
    // await FacebookAuth.instance.logOut();     we use this if we are using faceboook signin method 

  }

  // AuthResult loginWithFacebook() async {
    // final loginResult = await FacebookAuth.instance.login();
    // final token = loginResult.accessToken?.token;
    // if(token == null){
    //   // user has aborted the logging in process
    //   return AuthResult.aborted;
    // }
    // final oauthCredentials = FacebookAuthProvider.credential(token);

    // try {
    //   await FirebaseAuth.instance.signInWithCredential(
    //     oauthCredentials,

    //   );
    //   return AuthResult.success;

    // } 
    // on FirebaseAuthException catch (e) {
    //   final email = e.email;
    //   final credential = e.credential;
    //   if(e.code == Constants.accountExistsWithDifferentCredential &&
    //   email != null && 
    //   credential != null
    //   ){
    //     final providers = await FirebaseAuth.instance.fetchSignInMethodsForEmail(
    //       email,
    //       );
    //       if (providers. contains(Constants.googleCom)) {
    //         await loginWithGoogle();
    //         FirebaseAuth.instance.currentUser?.linkWithCredential(credential);

    //       }
    //       return AuthResult.success;



    //   }
    //   return AuthResult.failure;

    // }
   //}



  // Future<AuthResult> loginWithGoogle() async {
  //   final GoogleSignIn googleSignIn = GoogleSignIn( scopes: [
  //     Constants.emailScope,
  //   ]
      
  //   );
  //   final signInAccount = await googleSignIn.signIn();
  //   if(signInAccount == null){
  //     return AuthResult.aborted;
  //   }
  //   final googleAuth = await signInAccount.authentication;
  //   final oauthCredentials = GoogleAuthProvider.credential(
  //     idToken: googleAuth.idToken,
  //     accessToken: googleAuth.accessToken,
     

  //   );
  //   try{
  //     await FirebaseAuth.instance.signInWithCredential(
  //       oauthCredentials,
  //       );
  //       return AuthResult.success;
  //      } catch (e) {
  //       return AuthResult.failure;
  //      }


  //   }
    





Future<AuthResult> loginWithGoogle() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(scopes: [Constants.emailScope]);
    final signInAccount = await googleSignIn.signIn();

    if (signInAccount == null) {
      return AuthResult.aborted;
    }

    final googleAuth = await signInAccount.authentication;
    final oauthCredentials = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.accessToken,
    );

    await FirebaseAuth.instance.signInWithCredential(oauthCredentials);
    return AuthResult.success;
  } catch (e, stackTrace) {
    print("Error during Google Sign-In: $e");
    print(stackTrace);
    return AuthResult.failure;
  }
}




  }



