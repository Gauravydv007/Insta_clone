import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:instagram_clone001/firebase_options.dart';
import 'package:instagram_clone001/homePage.dart';
import 'package:instagram_clone001/state/auth/backend/authenticator.dart';
import 'package:instagram_clone001/state/auth/providers/is_logged_in_provider.dart';
import 'package:instagram_clone001/state/provider/is_loading_provider.dart';
import 'package:instagram_clone001/views/components/loading/loading_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp( 
    const ProviderScope(    // add this part to enable provider 
      child: MyApp()
      )
      );
  
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }



class MyApp extends StatelessWidget{
  const MyApp({Key ? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
  
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insta-clone',
      home: Consumer(
        builder: (context, ref, child){
          // take care of displaying the loading screen
          ref.listen<bool>(
            isLoadingProvider,
            (_, isLoading) {
              if(isLoading) {
                LoadingScreen.instance().show(context: context,
                );
              } else {
                LoadingScreen.instance().hide();
              }
            }
          );




          final isLoggedIn = ref.watch(isLoggedInProvider);
          if(isLoggedIn) {
            return MainView();

          }
          else{
            return  LoginView();
          }
          

        }
        ),
      
    );
  }


  
}


