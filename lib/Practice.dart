import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});


  @override
  Widget build(BuildContext context) {
    int h=MediaQuery.of(context).size.height.toInt();
    int w=MediaQuery.of(context).size.width.toInt();

    return Scaffold(appBar: AppBar(title: Text("$h x $w",),backgroundColor: Colors.greenAccent,
      actions: [PopupMenuButton(position: PopupMenuPosition.values[1],tooltip: "More options,",
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),color: Colors.green,
          itemBuilder: (context)=>[
            PopupMenuItem(onTap: (){
            },child: Row(
              children: [
                Text("Settings"),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Icon(Icons.settings),
                )
              ],
            ),)
            ,PopupMenuItem(child: Row(
              children: [
                Text("Options"),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Icon(Icons.more_horiz),
                )
              ],
            )),
            PopupMenuItem(child: Row(
              children: [
                Text("Log out"),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Icon(Icons.logout),
                )
              ],
            ))
          ]),
      ]
      ,),
      body: SingleChildScrollView(
        child: Column(
          children: [w<=400?Text("mobile"):Text("tab"),
            Row(
              children: [
                SizedBox(height: h/2,width: w/2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(fit: BoxFit.fill,
                            "https://cdn.pixabay.com/photo/2023/08/13/14/42/mountain-8187621_640.jpg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h/2,width: w/2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(fit: BoxFit.fill,
                            "https://cdn.pixabay.com/photo/2023/08/26/15/21/mushroom-8215265_1280.jpg"),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: (h-150)/2,width: w/2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.network(fit: BoxFit.cover,
                        "https://cdn.pixabay.com/photo/2023/08/13/14/42/mountain-8187621_640.jpg"),
                  ),
                ),
              ),
            ),
            TextButton(onPressed: (){
            }, child: Text("Click",style: TextStyle(backgroundColor: Colors.black,color: Colors.white),))
          ],
        ),
      )
      ,);
  }
}


