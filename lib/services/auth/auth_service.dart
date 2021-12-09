import 'package:firebase_auth/firebase_auth.dart';


class AuthService{
  FirebaseAuth auth = FirebaseAuth.instance;

  
  Future<User ?> register(String email, String password)async {
  UserCredential userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);

  return userCredential.user;
  }
  
  
  
  
  // void createUser(String email,String password
  //     ) async{
  //   try {
  //     UserCredential userCredential = await auth.createUserWithEmailAndPassword(
  //         email: email,
  //         password: password
  //     );
  //     print('Creating account successfully ${userCredential.user!.email} ');
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
  //

}