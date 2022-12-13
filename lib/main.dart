import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => _MainPageState(),
      '/second': (context) => const SecondRoute(),
      '/third': (context) => const ThirdRoute(),
      '/fourth': (context) => const FourthRoute(),
      '/fifth': (context) => const LoginForm(),
    },
  )); //MaterialApp
}



class _MainPageState extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';


  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: const Text('Curriculum Vitae '),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius:100.0,
              backgroundColor: Colors.green[300],
              backgroundImage: AssetImage('images/'
                  ''),
            ),
            const Text(
              ' Click Proceed to continue. ' ,
              style: TextStyle(
                fontFamily: 'McLaren',
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 150),
                          child: MaterialButton(
                              minWidth: double.infinity,
                              onPressed: () {
                                Navigator.pushNamed(context, '/fifth');
                              },
                              color: Colors.purpleAccent,
                              textColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text('Proceed'))),

                    ],
                  ),
                ))
          ],
        ),
      );
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}
class _LoginFormState extends State<LoginForm> {
  TextEditingController uname = TextEditingController();
  TextEditingController upaswd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Login Image
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  width: 400,
                  height: 200,
                  child: Image.asset(
                    'assets/images/secured.gif',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            //Edit Text
            SizedBox(height: 20.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                controller: uname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Please Enter User Name'),
              ),
            ),

            SizedBox(height: 10.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TextField(
                controller: upaswd,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Please Enter Password'),
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20.0)),
              child: TextButton(
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {


                  String _name = uname.text.toString().trim();
                  String _paswd = upaswd.text.toString();

                  if (_name.isEmpty) {
                    print('Please Enter User Name');

                  } else if (_paswd.isEmpty) {
                    print('Please Enter Password');

                  } else {
                    if (_name == 'admin' && _paswd == 'admin') {
                      Navigator.pushNamed(context, '/second');
                    } else {
                      print('Login Fail');
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Curriculum Vitae'),
        backgroundColor: Colors.black,
      ), // AppBar
      body: SafeArea(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('images/dope.jpg'),
            ),
            const Text(
              'LESTER HONRADO',
              style: TextStyle(
                fontFamily: 'McLaren',
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'IT',
              style: TextStyle(
                fontFamily: 'Payton One',
                color: Colors.black,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(
              height: 50.0,
              width: 500.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            const Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text(
                    '+639634723955',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Balsamic Sans',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  'honradocastro12@gmail.com',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Source Sans 3'),
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.house,
                  color: Colors.black,
                ),
                title: Text(
                  'Calit Binmaley, Pangasinan',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Source Sans 3'),
                ),

              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),// foreground
              ),
              child: const Text('Educational Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ), // ElevatedButton
            ElevatedButton(
              style: ElevatedButton.styleFrom(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)), // foreground
              ),
              child: const Text('Background'),
              onPressed: () {
                Navigator.pushNamed(context, '/fourth');
              },
            ),
          ],

        ),

      ),
    ); // Scaffold
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.black,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 5.0,
              width: 150.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Philippine College of Science and Technology'
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'College',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Bachelor of Science in Information Technology 2020-2024'
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Source Sans 3'),
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Lyceum-Northwestern University',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Senior High School 2016-2018'
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Camaley National High School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Junior High School 2012-2016'
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Source Sans 3'),
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Calit Elementary School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('2006-2012'
                ),
              ),
            ),
          ],

        ),
      ), // Center
    ); // Scaffold
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Education"),
        backgroundColor: Colors.black,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Tertiary Education ',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Philippine College of Science and Technology'
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'College',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Bachelor of Science in Information Technology 2020-2024'
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Secondary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Source Sans 3'),
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Lyceum-Northwestern University',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Senior High School 2018-2020'
                ),

              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Camaley National High School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('Junior High School 2012-2018'
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.black,
                ),
                title: Text(
                  'Primary Education',
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'Source Sans 3'),
                ),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              child: ListTile(
                title: Text(
                  'Calit Elementary School',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Source Sans 3',
                    fontSize: 20.0,
                  ),
                ),
                subtitle: Text('2016-2012'
                ),
              ),
            ),
          ],

        ),
      ), // Center
    ); // Scaffold
  }
}
