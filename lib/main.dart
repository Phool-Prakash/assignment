import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'assignment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //passwordVisibility
    bool obscureText = true;

    //controllers
    final _passwordController = TextEditingController();
    final _userNameController = TextEditingController();

    //size
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/bg.png',
                    ),
                    fit: BoxFit.fill)),
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                //left side screen
                if (screenWidth > 600) _buildLeftSide(screenWidth),
                // right side of screen
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/Logo.png'),
                            SizedBox(
                              width: screenWidth * 0.001,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Image.asset('assets/DEMO.png'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                        ),
                        Expanded(
                          flex: 2,
                          child: SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minHeight: screenHeight * 0.6,
                              ),
                              child: Card(
                                color: Colors.white,
                                elevation: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 40,
                                        backgroundColor: Colors.blue,
                                        child: Image.asset('assets/logo1.png'),
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'Welcome Back',
                                        style: TextStyle(
                                          fontSize: screenWidth * 0.03,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: screenHeight * 0.02),
                                      Center(
                                        child: Text(
                                          'We are glad to see you',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: screenWidth * 0.016),
                                        ),
                                      ),
                                      const SizedBox(height: 30),

                                      // Username
                                      TextFormField(
                                        controller: _userNameController,
                                        decoration: const InputDecoration(
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                          labelText: 'Username',
                                          labelStyle: TextStyle(
                                            color: Color(0xFF666666),
                                            fontSize: 16,
                                            fontFamily: 'Public Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 0.09,
                                            letterSpacing: 0.15,
                                          ),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                      const SizedBox(height: 20),

                                      // Password
                                      TextFormField(
                                        controller: _passwordController,
                                        obscureText: obscureText,
                                        decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                obscureText = !obscureText;
                                              });
                                            },
                                            icon: Icon(obscureText
                                                ? Icons.visibility_off
                                                : Icons.visibility),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey)),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey)),
                                          labelText: 'Password',
                                          labelStyle: const TextStyle(
                                            color: Color(0xFF666666),
                                            fontSize: 16,
                                            fontFamily: 'Public Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 0.09,
                                            letterSpacing: 0.15,
                                          ),
                                          border: const OutlineInputBorder(),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        onTap: () {},
                                        child: Container(
                                          width: 450,
                                          height: 48,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 6),
                                          clipBehavior: Clip.antiAlias,
                                          decoration: ShapeDecoration(
                                            gradient: const LinearGradient(
                                              begin: Alignment(0.00, 1.00),
                                              end: Alignment(0, -1),
                                              colors: [
                                                Color(0xFF35A7D7),
                                                Color(0xFF445A82)
                                              ],
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'LOGIN',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontFamily: 'Public Sans',
                                                fontWeight: FontWeight.w600,
                                                height: 0.09,
                                                letterSpacing: 0.40,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Forgot Password?',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: const Color(0xFF445D7F),
                                            fontSize: screenWidth * 0.01,
                                            fontFamily: 'Public Sans',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            '2024 DEMO GROUP. All Rights Reserved',
                            style: TextStyle(
                              color: const Color(0xFF666666),
                              fontSize: screenWidth * 0.010,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  //left side of screen
  Widget _buildLeftSide(double screenWidth) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          image: const DecorationImage(
            image: AssetImage('assets/rec.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Explore Demo Limited's Premier Logistics and Freight Services",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.03,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
