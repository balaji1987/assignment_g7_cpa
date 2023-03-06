import 'package:assignment_g7_cpa/DataBase/fetchdata.dart';
import 'package:flutter/material.dart';


class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

 
  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Success page')),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            
              children:  [
              const  SizedBox(height: 15),
               const Text("Your Data is successfully Added"),
              const  SizedBox(height: 15),
              
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                         return const FetchData();
                       }),);
                    }, child: const Text('View your expense')),
                    
                  ],
                )
              ],
          ),
        ),
    );
  }
} 