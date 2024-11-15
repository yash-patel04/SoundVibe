//***********************************************
//TODO:Configure this file to setup existing user log in mechanism
//***********************************************

// import 'package:firebase_auth/firebase_auth.dart';
//
// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   // Sign up with email and password
//   Future<User?> signUpWithEmail(String email, String password) async {
//     try {
//       UserCredential result = await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//       return result.user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
//
//   // Sign in with email and password
//   Future<User?> signInWithEmail(String email, String password) async {
//     try {
//       UserCredential result = await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//       return result.user;
//     } catch (e) {
//       print(e.toString());
//       return null;
//     }
//   }
//
//   // Sign out
//   Future<void> signOut() async {
//     try {
//       await _auth.signOut();
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// }
