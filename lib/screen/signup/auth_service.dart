import "dart:math";

import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";

class AuthService {
  final _auth = FirebaseAuth.instance;

  Future<User?> loginUsecreateUserWithEmailAndPassword(
    String email, String password  ) async{
      try{
      final cred = await _auth.createUserWithEmailAndPassword
      ( email: email, password: password);
        return cred.user; 
      }catch(e){
        print("Something whet wrong");
      }
      return null;
    }
  Future<void> signout() async{
  try{
    await _auth.signOut();

    }catch(e){
      print("Something went wrong");
    }
    }


}