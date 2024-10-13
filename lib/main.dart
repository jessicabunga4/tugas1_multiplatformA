import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
        ),
    );
  }
}

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 65, 252, 190),
              Color.fromARGB(255, 6, 64, 210),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          children: [
            SizedBox (height: 100.0),
            Image.asset('assets/Logo.png'),
            SizedBox (height: 16.0),
            Text(
              'Learn Graphic and UI/UX designing in Hindi\nfor free with live projects.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            SizedBox (height: 40.0),

            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 30.0),
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                hintText: 'Email Address',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16.0,),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 30.0),
                filled: true,
                fillColor: Colors.white.withOpacity(0.2),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(vertical: 14.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    ),
                ),
                child: Text('LOGIN', style: TextStyle(fontSize: 16.0)),
              ),
            ),

            SizedBox(height: 8.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){},
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox (height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(
                  child: Material(
                    color: Colors.white,
                    child: InkWell(
                      splashColor: Colors.grey.withOpacity(0.3),
                      onTap: (){},
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/google.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox (width:30),

                ClipOval(
                  child: Material(
                    color: Colors.white,
                    child: InkWell(
                      splashColor: Colors.grey.withOpacity(0.3),
                      onTap: (){},
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/facebook.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox (width:30),

                ClipOval(
                  child: Material(
                    color: Colors.white,
                    child: InkWell(
                      splashColor: Colors.grey.withOpacity(0.3),
                      onTap: (){},
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset('assets/twitter.png'),
                      ),
                    ),
                  ),
                ),
              ]
            ),
            SizedBox (width:60),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Register now',
                    style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white
                    ),
                  ),
                ),
              ]
            )
          ],
        ),
      )
      )
    );
  }
}