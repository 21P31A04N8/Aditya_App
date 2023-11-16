import 'package:flutter/material.dart';

class Prokabaddi extends StatefulWidget {
  const Prokabaddi({super.key});

  @override
  State<Prokabaddi> createState() => _ProkabaddiState();
}

class _ProkabaddiState extends State<Prokabaddi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("VEDA"),
        backgroundColor: Colors.blue[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/Events/prokabaddi2.jpg"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "PRO KABADDI",
                style: TextStyle(fontSize: 28),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.white,
                      ),
                    )),
                title: Text(
                  "9th to 12th November, 2023",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("Three days     9:30AM to 7:00PM"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[200],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                    )),
                title: Text(
                  "Aditya Educational Institutions",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("ADB Road, Surampalem."),
              ),
            ),
            Text(
              "About Event",
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Aditya Educational Institutions proudly organized the South Zone Inter-University Kabaddi (Men) Tournament 2023-24, attracting participants from all southern Indian states. The event showcased intense competition and sportsmanship as universities battled for supremacy on the kabaddi court. The tournament not only highlighted physical prowess but also emphasized strategic thinking and teamwork.After rigorous matches, our college emerged triumphant, securing the coveted championship title. The victorious team's exceptional performance and dedication were commendable, reflecting the institution's commitment to fostering a culture of sports excellence. The tournament provided a platform for athletes to showcase their skills, promoting a healthy spirit of competition among universities.The winners were celebrated and honored for their outstanding achievements, with the institution acknowledging their hard work and dedication to the sport. Aditya Educational Institutions took pride in hosting this prestigious event, contributing to the promotion of sports and physical fitness within the academic community while reinforcing the importance of a well-rounded education.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
