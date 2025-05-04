import 'package:flutter/material.dart';
import 'package:learning/ui_helper/util.dart';
import 'package:intl/intl.dart';
import 'package:learning/widgets/rounded_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineMedium: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, fontFamily: 'Lato'),
          titleSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, fontFamily: 'Lato'),
        ),
      ),
      home: BackgroundScreen(),
    );
  }
}

class BackgroundScreen extends StatelessWidget {
  var arrData =[
    {
      'name' : 'Jiya',
      'mobno' : 87457239087590,
      'unread' : '3',
    },

    {
      'name' : 'Mansi',
      'mobno' : 43251237439,
      'unread' :'4',
    },
    {
      'name' : 'Kavya',
      'mobno' : 948837846178,
      'unread' : '2'
    },

    {
      'name' : 'Disha',
      'mobno': 127340918942890,
      'unread' : '1',
    },
    {
      'name' : 'Jiya',
      'mobno' : 87457239087590,
      'unread' : '3',
    },

    {
      'name' : 'Mansi',
      'mobno' : 43251237439,
      'unread' :'4',
    },
    {
      'name' : 'Kavya',
      'mobno' : 948837846178,
      'unread' : '2'
    },

    {
      'name' : 'Disha',
      'mobno': 127340918942890,
      'unread' : '1',
    },

    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapping Lists'),
        backgroundColor: Colors.purple.shade300,
      ),
        body:ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 200,
            minWidth: 100,
            maxHeight: 300,
            minHeight: 100
          ),
          child: ElevatedButton(onPressed: (){}, child: Text('click')),
        )
    );
  }
}


class MyClass extends StatefulWidget {
 // const MyClass({Key? key}) : super(key: key);
  
  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  int _count=0;
  void _incrementState(){
    setState(() {
      _count++;
    });
  }
  var result="";
  @override
  Widget build(BuildContext context) {
    var no1controller =TextEditingController();
    var no2controller=TextEditingController();
   return Scaffold(
     body: Container(
       color: Colors.blue.shade100,
       child: Center(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1controller,
                  ),
               TextField(
                 keyboardType: TextInputType.number,
                 controller: no2controller,
               ),
               Padding(
                 padding: const EdgeInsets.all(21.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     ElevatedButton(onPressed: (){
                        var no1=int.parse(no1controller.text.toString());
                        var no2=int.parse(no2controller.text.toString());

                        int sum = no1+no2;
                        setState(() {
                          result ='The sum of $no1 and $no2 is $sum';
                        });

                     }, child: Text('Add')),
                     ElevatedButton(onPressed: (){
                       var no1=int.parse(no1controller.text.toString());
                       var no2=int.parse(no2controller.text.toString());

                       int subs = no1 - no2;
                       setState(() {
                         result ='The subtraction of $no1 and $no2 is $subs';
                       });
                     }, child: Text('Subtract')),
                     ElevatedButton(onPressed: (){
                       var no1=int.parse(no1controller.text.toString());
                       var no2=int.parse(no2controller.text.toString());

                       int multi = no1*no2;
                       setState(() {
                         result ='The multiplication of $no1 and $no2 is $multi';
                       });
                     }, child: Text('Multiply')),
                     ElevatedButton(onPressed: (){
                       var no1=int.parse(no1controller.text.toString());
                       var no2=int.parse(no2controller.text.toString());

                       double div = no1/no2;
                       setState(() {
                         result =' $no1 can be divided by $no2 by ${div.toStringAsFixed(2)} times';
                       });
                     }, child: Text('Divide')),
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child:  Text(result,
                   style: TextStyle(
                       fontSize: 25,
                       color:Colors.white ),),
               )
             ],
           ),
         ),
       ),
     ),

   );
    
  }
  
}























      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //       fit: BoxFit.cover, // Cover entire screen
      //     ),
      //   ),
      //   child: ListView(
      //     scrollDirection: Axis.vertical,
      //     children:[
      //       Column(
      //       children: [
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: const BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),              Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/profile.jpeg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4651508.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //         Container(
      //           margin: EdgeInsets.all(10),
      //           width: 100,
      //           height: 100,
      //
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage("assets/images/4650807.jpg"), // Replace with your image path
      //               fit: BoxFit.cover, // Cover entire screen
      //             ),
      //           ),
      //         ),
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //
      //       ],
      //     ),]
      //   )
      // ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar:AppBar(
//         title: Text('MyApp!!'),
//         backgroundColor: Colors.purple.shade300,
//       ) ,
//       body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children:[
//               Icon(
//               Icons.access_alarms,
//               size: 100,
//               color : Colors.pink,
//                   ),
//              FaIcon(FontAwesomeIcons.accusoft,size: 50,color: Colors.pink,)
//             ]
//           ))
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}): super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  callBack(){
    print('CallBack Function');
  }

  var emailText = TextEditingController();
  var passwordText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    var arrOfColours =[Colors.red,
    Colors.blue,
    Colors.lightGreen,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.brown];
    return Scaffold(
      appBar: AppBar (
        title: Text('Welcome to our App!'),
        backgroundColor: Colors.purple.shade300,
      ),
      body :Text(''),

   );
  }
}