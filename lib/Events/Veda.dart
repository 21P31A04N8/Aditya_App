import 'package:flutter/material.dart';

class Veda extends StatefulWidget {
  const Veda({super.key});

  @override
  State<Veda> createState() => _VedaState();
}

class _VedaState extends State<Veda> {
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
                        image: AssetImage("assets/Events/veda.jpeg"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "VEDA",
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
                  "15th & 16th November, 2023",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("Two days     9:30AM to 4:10PM"),
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
                "Aditya Educational Institutions marked Engineers Day with a grand celebration named Veda, hosting a dynamic tech fest. The event featured exhilarating competitions such as a treasure hunt, technical quiz, project expo, coding contests, and a captivating flash mob. Students showcased their innovative projects in the project expo, highlighting their technical prowess.The festival created a vibrant atmosphere with diverse activities, including food courts providing a range of culinary delights. Participants engaged in intense coding competitions, challenging quizzes, and thrilling treasure hunts, displaying their skills and knowledge. The winners were rewarded not only with prize money but also with thoughtful gifts, acknowledging their exceptional performance.Veda fostered a spirit of collaboration and competition, bringing together students from different disciplines to celebrate engineering excellence. The event not only showcased technical acumen but also emphasized creativity and teamwork. Aditya Educational Institutions took pride in promoting a culture of innovation and learning through this festive tribute to the engineering community.",
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
