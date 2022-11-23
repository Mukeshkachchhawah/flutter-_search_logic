import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color.fromARGB(255, 14, 0, 136), Color.fromARGB(255, 3, 5, 58)])
            ),
          ),
          Column(
            children: [
              SafeArea(
                child: Container(
                //  height: 30,
                //  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    
                  ),child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if((searchController.text).replaceAll(" ", " ")== " "){
                            print("Black Search");
                          }else{
                           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Search(searchController.text)));
                          }
                        },
                        child: Container(
                          child: Icon(Icons.search, color: Colors.blueAccent,
                          ),
margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                        ),
                      ),
                      Expanded(child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none, hintText: "Search"
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hy Flutter",style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Let's Start Flutter Code", style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
          
        ],
      )
   
    );
  }
}