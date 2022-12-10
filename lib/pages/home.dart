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
      backgroundColor: Color.fromRGBO(69, 90, 100, 100),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
            padding: EdgeInsets.fromLTRB(25, 50, 25, 30),
            child: Column(
              
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hello ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text("Name",
                            style: TextStyle(color: Colors.white, fontSize: 23)),
                        SizedBox(
                          width: 170,
                        ),
                        CircleAvatar(
                          maxRadius: 27,
                          backgroundColor: Colors.blue,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        label: Text(
                          "Search Movie",
                          style: TextStyle(
                              color: Color.fromARGB(255, 180, 180, 180)),
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(96, 125, 139, 100),
                        constraints: BoxConstraints(maxHeight: 45, maxWidth: 340),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(95, 125, 136, 97))))),
                SizedBox(
                  height: 23,
                ),
                Row(
                  children: [
                    Text("Playing ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        )),
                    Text(
                      "Now",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(height: 20,),
      
                Container(
                  width:  double.infinity,
                  height: 300,
                  child: ListView.builder(
                   physics: BouncingScrollPhysics(),
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                         width: 300, 
                          decoration: BoxDecoration( color: index == 0 ? Colors.yellow : Colors.red,
                                borderRadius: BorderRadius.circular(30) ),
                          ),
                    );
                  }),
                ),

                SizedBox(
                  height: 20,
                ),
                Row(

                  children: [
                    Text("Movies ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        )),
                    Text(
                      "Available",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            decoration: BoxDecoration(
                                color: index == 0 ? Colors.yellow : Colors.red,
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        );
                      }),
                )
              ],
            )),
      ),
    );
  }
}
