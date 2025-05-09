import 'package:flutter/material.dart';
import 'login.dart';

void main() {
 runApp(const MaterialApp(
   home: Register(),
   debugShowCheckedModeBanner: false,
 ));
}

class Register extends StatefulWidget {
 const Register({Key? key}) : super(key: key);
 @override
 State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
 bool showPassword = false;
 bool showConfirmPassword = false;
 bool isAgreed = false; 

 final idCtr = TextEditingController();
 final emailCtr = TextEditingController();
 final pwCtr = TextEditingController();
 final confirmpwCtr = TextEditingController();

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: 
     Container(
      color: Colors.orangeAccent[100],
      child: 
     Padding(
       padding: const EdgeInsets.all(12),
       child: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
           children: [
            Text('Create Your Account', style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 40,
              color: Colors.orange[900],
               shadows: [
                Shadow(
                  offset: Offset(2, 2),
                  blurRadius: 4,
                  color: Colors.black26,
                ),  
              ],
            )),
            const SizedBox(height: 20),
             TextField(
               controller: idCtr,
               decoration: const InputDecoration(
                 labelText: 'ID',
                 border: OutlineInputBorder(), 
               ),
             ),
             const SizedBox(height: 20),
             TextField(
               controller: emailCtr,
               decoration: const InputDecoration(
                 labelText: 'Email',
                 border: OutlineInputBorder(),
               ),
             ),
             const SizedBox(height: 20),
             TextField(
               controller: pwCtr,
               obscureText: !showPassword,
               decoration: InputDecoration(
                 labelText: 'Password',
                 border: const OutlineInputBorder(),
                 suffixIcon: IconButton(
                   icon: Icon(
                     showPassword ? Icons.visibility : Icons.visibility_off,
                   ),
                   onPressed: () {
                     setState(() {
                       showPassword = !showPassword;
                     });
                   },
                 ),
               ),
             ),
             const SizedBox(height: 20),
             TextField(
               controller: confirmpwCtr,
               obscureText: !showConfirmPassword,
               decoration: InputDecoration(
                 labelText: 'Confirm Password',
                 border: const OutlineInputBorder(),
                 suffixIcon: IconButton(
                   icon: Icon(
                     showConfirmPassword ? Icons.visibility : Icons.visibility_off,
                   ),
                   onPressed: () {
                     setState(() {
                       showConfirmPassword = !showConfirmPassword;
                     });
                   },
                 ),
               ),
             ),
             const SizedBox(height: 20),
             
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Checkbox(
                   value: isAgreed,
                   onChanged: (value) {
                     setState(() {
                       isAgreed = value ?? false;
                     });
                   },
                 ),
                 const Text("Saya menyetujui syarat & ketentuan"),
               ],
             ),
             const SizedBox(height: 10),
       
             ElevatedButton(
               onPressed: isAgreed ? (){
                       showDialog(
                         context: context,
                         builder: (_) => AlertDialog(
                           content: const Text("Akun berhasil dibuat!"),
                           actions: [
                             TextButton(
                               onPressed: () {
                                 Navigator.of(context).pop();
                                 Navigator.pushReplacement(
                                   context,
                                   MaterialPageRoute(builder: (_) => Login()),
                                 );
                               },
                               child: const Text("OK"),
                             ),
                           ],
                         ),
                       );
                     }
                   : null, 
               child: const Text("SIGN UP",
                 style: TextStyle(
                   color: Colors.orange,
                   fontWeight: FontWeight.bold,
                   fontSize: 16,
                 )),
             ),
           ],       
         ),
        ),
       ),
     ),
     ),
   );
 }
}
