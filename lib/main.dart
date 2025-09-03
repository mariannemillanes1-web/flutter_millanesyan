import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        title: Text("My App", style: TextStyle(fontSize: 24)),
        backgroundColor: Colors.blue,
        actions: [
          Tooltip(
            message: "Search",
            child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
          ),
          Tooltip(
            message: "More",
            child: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Asset Image
            Image.asset('assets/ok.jpg', width: 200, height: 200),

            SizedBox(height: 20),

            // Network Image
            Image.network(
            'https://media.tenor.com/avy478iVfSQAAAAM/help-dog.gif',   
              width: 200,
              height: 200,
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                  label: Text("Edit"),
                ),
                SizedBox(width: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  label: Text("Delete"),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.teal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Tooltip(
              message: "Settings",
              child: IconButton(
                icon: Icon(Icons.settings),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            Tooltip(
              message: "Home",
              child: IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
            Tooltip(
              message: "Profile",
              child: IconButton(
                icon: Icon(Icons.person),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}











// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final String title = 'Prelim App';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   final String name = "Student";
//   final int age = 20;
//   final double grade = 95.5;
//   final bool isPassed = true;

//   final List<String> subjects = ["Math", "Science", "English"];
//   final Map<String, int> scores = {"Math": 90, "Science": 95, "English": 92};

//   @override
//   Widget build(BuildContext context) {
//     for (int i = 1; i <= 5; i++) {
//       print("For loop number: $i");
//     }

//     int count = 1;
//     while (count <= 5) {
//       print("While loop number: $count");
//       count++;
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Prelim App"),
//         backgroundColor: Colors.pink[200],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.pink[100],
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
//           BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'SETTINGS'),
//         ],
//       ),
//       body: Container(
//         color: Colors.pink[50],
//         padding: EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Text(
//                 'STEPS ON HOW TO SETUP ENVIRONMENT FOR FLUTTER/DART APPLICATION:\n'
//                 '1. Download flutter SDK on their official website.\n'
//                 '2. Extract your downloaded file to your created folder.\n'
//                 '3. Open a new terminal and enter command "sudo apt install"\n'
//                 '4. Enter command "gedit .bas .bashrc" and head over to the bashrc text.\n'
//                 '5. Scroll to the bottom and export your file path.\n'
//                 '6. To check the path or existence of your flutter, type in "which flutter".\n'
//                 '7. To check whether your flutter has issues, type in "flutter doctor".\n'
//                 '8. Once you are set, you are now ready to create your first application.\n'
                
//                 'STEPS IN CREATING A FLUTTER APPLICATION:\n1. Go over to your terminal and type "flutter create project_name"\n2. Cd to your project\n3. To edit your flutter, enter a text editor by entering the command "code ."\n4. To run your flutter app, enter "flutter run" in your terminal.\nFLutter-Framework\nDart-Language',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: Text(
//                 'cute ko',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
