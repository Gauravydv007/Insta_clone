import 'package:flutter/foundation.dart' show immutable;

@immutable
class  Constants{
  static const accountExistsWithDifferentCredential = 
  'account-exists-with-different-credential';
  static const googleCom = 'google.com';
  static const emailScope = 'email';
  const Constants._();    //private constructor so it can't initialised form outside
  

  
}