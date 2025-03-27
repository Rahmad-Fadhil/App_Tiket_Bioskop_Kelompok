import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "TIX CINEMA"
          , style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu),  color: Colors.white)
        ],
      ),
      body: SizedBox(
        height: 280,
        child: ListView( // untuk scroll secara horizontal
          scrollDirection: Axis.horizontal, // tapi masih eror
          children: [
              Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    height: 230,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/1 (1).jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 230,
                    width: 125,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/1 (4).jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 230,
                    width: 125,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/1 (2).jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 230,
                    width: 125,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/1 (3).jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 230,
                    width: 125,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/1 (5).jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 230,
                    width: 125,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/1 (6).jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 230,
                    width: 125,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/1 (7).jpg"),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ) 
    );
  }
}