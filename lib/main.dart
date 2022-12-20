import 'package:flutter/material.dart';
import 'package:untitled2/page/appfile.dart';
void main() {

 runApp( const MaterialApp(
   home: HomePage(),
 ));

}
class HomePage extends StatefulWidget{
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List <String> _list=[]
  ;
  @override
  Widget build(BuildContext context) {
   return  MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.indigo[200],
       appBar: AppBar(centerTitle: true,
         title: const Text('Event'),
         backgroundColor: Colors.indigo,
         leading: IconButton(
           onPressed: () {},
           icon: const Icon(Icons.calendar_month),
         ),
       ),
       body: ListView.builder(
         itemCount:_list.length,
          itemBuilder: (BuildContext context, int index){
           return Card(
             elevation: 10,
               shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
             margin: const EdgeInsets.all(15),
             child:ListTile(
             leading: const Icon(Icons.date_range_rounded),
             title: Text(_list[index],


           ),
)
           );
          },

       ),
       floatingActionButton: Builder(
         builder: (context) {
           return FloatingActionButton(
             backgroundColor: Colors.indigo,

               onPressed:()async {String result = await Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=> const Add())
                  );
          setState((){
            _list.add(result);
          }
          );
    },
               child: const Icon(Icons.add),

           );
         }
       )

     ),
     );
  }
}