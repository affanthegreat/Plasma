import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

import 'gallery.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Container button(String btnName) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400, width: 1.3),
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white),
      child: Center(
        child: Text(btnName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black)),
      ),
    );
  }

  Container card(String heading, String content) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.greenAccent, width: 0.6),
        color: Colors.greenAccent.shade200.withOpacity(0.3),
        borderRadius: BorderRadius.circular(18),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text(
                heading,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavDrawer(),
        backgroundColor: Colors.grey.shade50,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          iconTheme: IconThemeData(color: Colors.grey.shade800),
          backgroundColor: Colors.grey.shade50,
          elevation: 0,
        ),
        //bottomNavigationBar:Navbar(),
        body: Stack(children: [

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.24,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.grey.shade400, width: 0.7),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Call Centers",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      thickness: 0.3,
                      color: Colors.black,
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                          children: [
                        TextSpan(text: "State Control Room Number:"),
                        TextSpan(
                            text: "                 0866 2410978\n",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        TextSpan(text: "Health Advisory Helpline: "),
                        TextSpan(
                            text: "                      104,14410",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                      ])),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Pdfviewer("assets/District.pdf")));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, bottom: 10, left: 30, right: 30),
                      child: Container(
                        height: 36,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.grey.shade400, width: 1),
                            borderRadius: BorderRadius.circular(6)),
                        child: Center(
                            child: Text(
                          "District Wise Call Centers",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:40.0,right:40 ),
                    child: Divider(
                      thickness: 1,
                        color: Colors.grey.shade300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Copyright © 2020 Plasma AP - All Rights Reserved.",style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.bold,fontSize: 9),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:8.0),
                        child: Text("Powered by MMTCS",style: TextStyle(color: Colors.grey.shade400,fontWeight: FontWeight.bold,fontSize: 10),),
                      )

                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0, left: 10, right: 10),
            child: Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * 0.24,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200, width: 1),
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,

                      image: AssetImage('assets/download.jpg'))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Align(
              alignment: Alignment.center,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.523,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '"Donate Plasma, Save Lives"',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Webpage('https://docs.google.com/forms/d/e/1FAIpQLSfKeMSjg7J-A5XPdTeNHjC3xHEh68NfmRQejThXmVdQFJ1MjA/viewform')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: button("Donate Plasma"),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Webpage('https://docs.google.com/forms/d/e/1FAIpQLSddr-OxTl5w91R3lw4ocYM_ZB-cf8AOusSv-9rww_2P3b9A2A/viewform')));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: button("Request Plasma"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Options',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()))
            },
          ),
          ListTile(
            leading: Icon(Icons.add_alert),
            title: Text('COVID-19 Dashboard'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Webpage(
                          "http://hmfw.ap.gov.in/covid_dashboard.aspx")))
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Gallery'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => S()))
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page),
            title: Text('Contact Us'),
            onTap: () => {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ContactUs()))
            },
          ),
        ],
      ),
    );
  }
}

class Webpage extends StatefulWidget {
  String url;

  Webpage(this.url);

  @override
  _WebpageState createState() => _WebpageState();
}

class _WebpageState extends State<Webpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey.shade800),
        backgroundColor: Colors.grey.shade50,
        title: Text(
          widget.url,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        ),
        elevation: 2,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: InAppWebView(
              initialUrl: widget.url,
            ),
          ),
        ),
      ),
    );
  }
}

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      // bottomNavigationBar: Navbar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey.shade800),
        backgroundColor: Colors.grey.shade50,
        centerTitle: true,
        title: Text(
          "Contact Us",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade400, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color:
                                Colors.greenAccent.shade400.withOpacity(0.2)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            " Special Chief Secretary to Govt.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 8.0, right: 8.0, bottom: 0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            " Health, Medical & Family Welfare Dept.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 8.0, right: 8.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            " 5th Block,Ground Floor,Room No:157",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 8.0, right: 8.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            " A.P Secretariat,Velagapudi,",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 8.0, right: 8.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            " Guntur Dist., Andhra Pradesh.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey.shade400, width: 1)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color:
                                Colors.greenAccent.shade400.withOpacity(0.2)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Commissioner of Health & Family Welfare",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 8.0, right: 8.0, bottom: 0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "  2nd Floor, B-Block,Himagna Towers\n D.No.189,LIC Colony Adda Road",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 8.0, right: 8.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            " Saipuram Colony, One Center\nGollapudi, Vijayawada Rural",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0.0, left: 8.0, right: 8.0),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            " Krishna Dist., Andhra Pradesh.",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            Pdfviewer("assets/ContactUs.pdf")));
              },
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 50.0, right: 50.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400, width: 2),
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.blueAccent),
                  child: Center(
                    child: Text("Contact Details of Officials",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.white)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Pdfviewer extends StatefulWidget {
  String assetLocation;

  Pdfviewer(this.assetLocation);

  @override
  _PdfviewerState createState() => _PdfviewerState();
}

class _PdfviewerState extends State<Pdfviewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.grey.shade800),
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
      ),
      body: Center(
          child: PDF(
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: false,
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('$page: ${error.toString()}');
        },
        onPageChanged: (int page, int total) {
          print('page change: $page/$total');
        },
      ).fromAsset(widget.assetLocation)),
    );
  }
}

class Page extends StatefulWidget {
  String content;
  int pageNum;

  Page(this.content, this.pageNum);

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Donate Plasma - About & Queries",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey.shade50,
        iconTheme: IconThemeData(color: Colors.grey.shade800),
      ),
      backgroundColor: Colors.grey.shade50,
      body: Stack(children: [
        Container(
          foregroundDecoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8)
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.fitHeight,
            )
          ),
        ),
        Container(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.grey.shade300, width: 1),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: pageNum == 0
                            ? RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                    children: [
                                      TextSpan(
                                          text:
                                              "What is plasma in the background of Covid-19? Who should donate plasma? How to do it?\n\n",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              "Plasma donation... The same thing is being heard everywhere across the country now in the wake of the Covid-19 virus. What is plasma? Why is plasma so popular now? Why is the plasma in the milk of Covid patients so vital? All of this is exactly what everyone needs to know. When Covid viruses enter our body, antibodies are made to detect and kill the white blood cells. Those antibodies remain in the plasma. Similar antibodies are produced in large quantities in the plasma of patients recovering from Covid. Therefore, it has been found that patients who are already in a critical condition are more likely to recover quickly and recover from life-threatening complications if the plasma of patients who have already recovered from the Covid is loaded.\nThat is why now governments, celebrities and doctors are campaigning on the need to donate plasma. Chief Minister YS Jaganmohan Reddy, however, announced an incentive of Rs 5,000 for those who donate plasma."),
                                      TextSpan(
                                          text: "\n\nSo, what is plasma?\n\n",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text:
                                              "Plasma is a yellowish-green fluid in the blood that resembles water. Plasma is the fluid that remains in the blood after the removal of red blood cells, white blood cells, and platelets. Up to 55% of our blood is plasma. The yellow plasma fluid contains enzymes, immune cells, and other proteins. Plasma helps in blood clotting in the body as well as in combating diseases."),
                                    ]),
                              )
                            : pageNum == 1
                                ? RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.5),
                                        children: [
                                          TextSpan(
                                              text:
                                                  "What is Plasma Therapy?\n\n",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text:
                                                  "Man's immunity is crucial to combating Covid. The plasma containing the immune cells is collected in the body of those who have conquered Covid and injected into the body of the infected person. This causes them to develop immune cells and destroy the virus. This whole process is called plasma therapy."),
                                          TextSpan(
                                              text:
                                                  "\n\nHow is plasma collected?\n\n",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text:
                                                  "The process of collecting plasma is similar to that of donating blood. Blood is taken from the body and plasma is separated from it. There is also a procedure called Aspergillus. By this procedure, however, the plasma is separated from the collected blood, and the blood is pumped back into the body. This requires some special machines."),
                                          TextSpan(
                                              text:
                                                  "\n\nHow many people can a person save with plasma?\n\n",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text:
                                                  "Plasma therapy is given only to those whose immune system or corona symptoms are high and whose health is disturbed by respiratory problems. Sufferers are given 200 milliliters of plasma. This means that plasma donation by one person can save the lives of two people. Patient recovery begins just 2 days after plasma transfusion."),
                                        ]),
                                  )
                                : RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                        children: [
                                          TextSpan(
                                              text:
                                                  "Who can donate plasma?\n\n",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text:
                                                  "Only those who have fully recovered from the Covid virus should donate plasma. Do not take plasma from people with chronic diseases. Doctors find out by ELISA test whether the immune cells are at the right level.\nPlasma should be donated only after doctors have confirmed that Covid is not present in our body after performing two tests at a time. Body weight should be at least 55 kg, hemoglobin in the blood should be at least 12 and blood quality should be good. Plasma is collected after looking at all these."),
                                          TextSpan(
                                              text:
                                                  "\n\nHow much plasma can be extracted from one?\n\n",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text:
                                                  "Approximately 800 milliliters of blood is collected from one person. It is possible to take about 400 milliliters of plasma from this blood."),
                                          TextSpan(
                                              text:
                                                  "\n\nIs Plasma Donation Possible for Health Problems?\n\n",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                              text:
                                                  "Donating plasma does not cause any health problems. It’s also like donating blood. Once the plasma is donated, new blood is made in the body again. So if we donate plasma we will be the ones who saved both.\nTherefore, governments want those who have recovered from Covid to come forward to donate plasma.")
                                        ]),
                                  ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      pageNum++;
                      if (pageNum > 2) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 4.0, left: 70, right: 70, bottom: 6.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(color: Colors.black, width: 0.2)),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool x = true;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, CupertinoPageRoute(builder: (context) => Page("", 1))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnimatedContainer(
            duration: Duration(seconds: 1),
            child: Center(
                child: AnimatedContainer(
              height: 350,
              width: 350,
              duration: Duration(seconds: 2),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/download.jpg'))),
            ))));
  }
}
