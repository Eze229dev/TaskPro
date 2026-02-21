import 'package:flutter/material.dart';

import 'package:taskprof/pages/taskaddpage.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ElevatedButton(
              onPressed: () {
                // Navigate to the next page or perform an action
              },
              child: const Text("Get Started"),
            );
    return Scaffold(
      
      appBar: AppBar(
        leading: Icon(Icons.supervised_user_circle),
        actions: [
          Icon(Icons.search),
          Icon(Icons.more_vert)

        ],
       
        
        title: const Text("TaskPro",
        style: TextStyle(
          color: Colors.green,
          fontSize: 30,


        )
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to TaskPro",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )
            ),
            const SizedBox(height: 20),
            Container(
             
              padding: const EdgeInsets.all(18.0),
              child: const Text(      
                "Your ultimate task management app to boost productivity and stay organized.",
                style: TextStyle(
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            )
            ,const SizedBox(height: 30),
            ElevatedButton(onPressed: (){
              
              
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskAddPage()));

            }, child: Text("Get Started "))
          ],
        ),
      )
    );
  }
}
