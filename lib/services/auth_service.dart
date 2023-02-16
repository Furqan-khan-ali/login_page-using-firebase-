import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthService{

  Future<bool> loginOrCreateUser(String em, String pas) async{

    try
        {
          await _signIn(em, pas);
          return true;
        }
        catch(e){
          try{
            await _signUp(em, pas);
            return true;
          }
          catch(e){
           return false;
          }
        }

  }

  _signIn(String em , String pas) async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: em, password: pas);
  }

  _signUp(String em, String pas) async{

   await FirebaseAuth.instance.createUserWithEmailAndPassword(email: em, password: pas);
  }
}