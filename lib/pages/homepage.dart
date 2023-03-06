import 'package:assignment_g7_cpa/DataBase/fetchdata.dart';
import 'package:assignment_g7_cpa/pages/addpage.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/expense-image.jpg'),
            Column(
              children:  [
                Text('Expense Tracking', style: Theme.of(context).textTheme.headline3,),
                Text('get a track of your expenses', style: Theme.of(context).textTheme.bodyText1,),
              ],
            ),
            
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                     
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                        return const Addinfo();
                       }),);
                    }, child: const Text('Add Your expenses')),
                    const SizedBox(width: 20.0,),
                     ElevatedButton(
                      
                      onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) { 
                        return const FetchData();
                       }),);
                    }, child: const Text('View your expenses')),
              ],
            )
          ],
        ),
      ),

    );
  }
} 