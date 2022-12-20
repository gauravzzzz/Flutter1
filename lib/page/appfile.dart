import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget{
  const Add({super.key});
  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
final control = TextEditingController();
dynamic result;

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: Colors.indigo[200],
      appBar: AppBar(
        title: const Text("New event"),
        backgroundColor: Colors.indigo,
      ),
      body:

      Column(
      mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 12),

      child: TextField(
      controller: control,
        minLines: 1,
        maxLines: 3,
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration:   InputDecoration(
          filled: true,
          fillColor: Colors.indigo,

          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(50)),
          prefixIcon: const Icon(Icons.calendar_month_outlined,
            color: Colors.white,
          ),
          hintText:  'Event',
          )


        ),


      ),

        Builder(
            builder: (context) {
              return ElevatedButton(onPressed:(){
                String ab = control.text;
                Navigator.of(context).pop(ab);
              },
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo, // background (button) color
                       shape: RoundedRectangleBorder(

                         borderRadius: BorderRadius.circular(0)
                       ),minimumSize: const Size(100,36),
                      elevation: 5,
                      foregroundColor: Colors.white, // foreground (text) color
                    ),
                  child: const Text("Add"));
            }
        )


    ]
      ),
    );
  }
}