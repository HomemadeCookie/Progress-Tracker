
import 'package:flutter/material.dart';
import 'presentation/widgets/client-list.dart'; 
import 'presentation/widgets/client-page.dart'; 
import 'presentation/widgets/date-picker.dart'; 
import 'presentation/widgets/progress-bar.dart'; 
// import 'package:progress-tracker/client-list/client-page.dart';

void main() {
  runApp(ProgressTrackerApp());
}

class ProgressTrackerApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Progress Tracker'),
        ),
        body: SingleChildScrollView( // Use SingleChildScrollView to allow scrolling if the content overflows
          child: Column(
              children: [
                Container(
                    // A fixed-height child.
                    color: const Color(0xffeeee00), // Yellow
                    height: 396.0,
                    alignment: Alignment.center,
                    child: ProgressBar(),
                  ),
                  Container(
                    // A fixed-height child.
                    color: const Color(0xffeeee00), // Yellow
                    height: 220.0,
                    alignment: Alignment.center,
                    child: DatePicker(),
                  ),
                  Container(
                    // A fixed-height child.
                    // color: Color.fromARGB(255, 103, 103, 31), // Yellow
                    height: 400.0,
                    alignment: Alignment.center,
                    child: ClientList(),
                  ),
                // ProgressBar(), // Your ProgressBar widget
                // MainPage(), // Your MainPage widget
              ],
            ),
        ),
      ),
      routes: {
        '/clientlist': (context) => ClientList()
      }
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Progress Tracker"),
//       ),
//       body: Column(children: [
//         Progress(),
//         TaskList(),
//       ],)
//     );
//   }
// }

// class Progress extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Text("You are this far away from finishing your sales visits"),
//       LinearProgressIndicator(value: 0.0),
//     ],);
//   }
// }

// class TaskList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return Column(children: [
//       TaskItem(label: "Business 1"),
//       TaskItem(label: "Business 1"),
//       TaskItem(label: "Business 1"),
//     ],);
//   }
// }

// class TaskItem extends StatefulWidget {
//   final String label;

//   const TaskItem({Key? key, required this.label}): super(key: key);

//   @override
//   State<TaskItem> createState() => _TaskItemState();
// }

// class _TaskItemState extends State<TaskItem> {
//   bool? _value=false;

//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       Checkbox(onChanged: (newValue) => setState(() => _value=newValue), value: _value),
//       Text(widget.label),
//     ],);
//   }
// }

