import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:myapplication/Courses/Btech/Btech.dart';
import 'package:myapplication/Courses/Diploma/home.dart';
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  Widget page=MainScreen();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: Builder(
          builder: (context) {
            return MenuScreen(onpagechange:(a){
              setState(() {
                page=a;
              });
              ZoomDrawer.of(context)!.close();
            },);
          }
      ),
      mainScreen: page,
      borderRadius: 24.0,
      closeCurve: Curves.decelerate,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.grey,
      menuBackgroundColor: Colors.orangeAccent,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()=>_onBackButtonpressed(context),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Home")),
          leading: IconButton(icon:
          Icon(Icons.menu),onPressed: ()=>ZoomDrawer.of(context)!.toggle(),),
        ),
      ),
    );
  }
}
Future <bool> _onBackButtonpressed(BuildContext context) async {
  bool exitApp=await showDialog(context: context, builder: (BuildContext contex){
    return AlertDialog(
      icon: Icon(Icons.info,size: 35,color: Colors.orange,),
      title: Center(child: Text("Are you sure?")),
      content: Text("Do you really want to close the app?"),
      actions: <Widget>[
        ElevatedButton(
            onPressed: (){
          Navigator.of(context).pop(false);
        },
            child: Text("No")),
        ElevatedButton(
            onPressed: (){
              Navigator.of(context).pop(true);
            },
            child: Text("Yes"))
      ]
    );
  });
  return exitApp?? false;
}
class MenuScreen extends StatefulWidget {
  MenuScreen({super.key,required this.onpagechange});
  final Function(Widget) onpagechange;

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  // List<listItems> draweritems=[
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Theme(
          data: ThemeData.dark(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              // draweritems.map((e) => ListTile(
              //   title: e.title,
              //   leading: e.icon,
              //   onTap: (){
              //     onpagechange(e.page);
              //   },
              // )).toList()
              [
                ListTile(
                  title: Text('Home'),
                  leading: Icon(Icons.home),
                  onTap: (){
                    widget.onpagechange(MainScreen());
                  },
                ),
                ExpansionTile(
                  title: Text('Courses'),
                  childrenPadding: EdgeInsets.symmetric(vertical: 8),
                  children: [
                    InkWell(
                      onTap: (){
                        widget.onpagechange(Btech());
                      },
                      child: SizedBox(
                        height: 30,
                        width: 160,
                        child: Card(color: Colors.white,
                          child: Center(child: Text("Btech",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 160,
                      child: Card(color: Colors.white,
                        child: Center(child: Text("Pharmacy",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 160,
                      child: Card(color: Colors.white,
                        child: Center(child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Courses()));
                            },
                            child: Text("Diploma",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 160,
                      child: Card(color: Colors.white,
                        child: Center(child: Text("BBA",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 160,
                      child: Card(color: Colors.white,
                        child: Center(child: Text("MBA",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(title: Text("Events"),
                  children: [
                    SizedBox(
                      height: 30,
                      width: 160,
                      child: Card(color: Colors.white,
                        child: Center(child: Text("VEDA",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 160,
                      child: Card(color: Colors.white,
                        child: Center(child: Text("COLORS",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 160,
                      child: Card(color: Colors.white,
                        child: Center(child: Text("Acheivers day",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ],
                ),
                ListTile(
                  title: Text('Thub'),
                  leading: Icon(Icons.style_outlined),
                  onTap: (){
                    widget.onpagechange(Thub());
                  },
                ),
                ListTile(
                  title: Text('Contact Us'),
                  leading: Icon(Icons.phone),
                  onTap: (){
                  },
                )
              ]
          ),
        )
    );
  }
}


class Thub extends StatefulWidget {
  const Thub({super.key});

  @override
  State<Thub> createState() => _ThubState();
}

class _ThubState extends State<Thub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Thub")),
        leading: IconButton(icon: Icon(Icons.menu),onPressed: (){
          ZoomDrawer.of(context)!.toggle();
        },),
      ),
    );
  }
}


class listItems {
  final Icon icon;
  final Text title;
  final Widget page;
  listItems(this.icon,this.title, this.page);
}
