import 'package:flutter/material.dart';

class HealthCareView extends StatefulWidget {
  const HealthCareView({Key? key}) : super(key: key);

  @override
  State<HealthCareView> createState() => _HealthCareViewState();
}

class _HealthCareViewState extends State<HealthCareView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health Care'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Color(0xff4E77A3),
      ),
      body: Container(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //first widget
              Container(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset('assets/bloodpressure.png',fit: BoxFit.fill,),
                    ),
                    Text('Check Blood Pressure',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              //Divider(color: Colors.purple,thickness: 2.5,),

              //second widget
              Container(
                width: width-60,
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.mic,color: Colors.white,),
                    prefix: Icon(Icons.search,color: Colors.white,),
                    filled: true,
                    fillColor: Color(0xff8FC0E1)
                  ),
                ),
              ),


              //third widget
              Container(
                margin: EdgeInsets.only(top: 8,bottom: 4),
                  child: Center(
                    child: Text('Popular Specialists',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xff171717)
                      ),
                    ),
                  ),
              ),

              //list of cards
              Container(
                color: Color(0xffA7D8DE),
                padding: EdgeInsets.only(top: 40,bottom: height/7.5),
                child: GridView.extent(
                  maxCrossAxisExtent: width / 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                  children: [
                    //first card
                    Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: Image.asset('assets/stetho.png',fit: BoxFit.fill,),
                          ),

                          Text('General Physician'),
                          Text('(cold, coughe, fever)'),
                        ],
                      ),
                    ),

                    //second card
                    Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: Image.asset('assets/psychology.png',fit: BoxFit.fill,),
                          ),
                          Text('Psychologist'),
                          Text('(depression, anxiety, fatigue)'),
                        ],
                      ),
                    ),

                    //third card
                    Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: Image.asset('assets/pulmo.jpg',fit: BoxFit.fill,),
                          ),
                          Text('Pulmonary'),
                          Text('(bronchiectasis,\nchest infection)'),
                        ],
                      ),
                    ),

                    //fourth card
                    Card(
                      child: Column(
                        children: [
                          Container(
                            height: 120,
                            child: Image.asset('assets/derma.png',fit: BoxFit.fill,),
                          ),
                          Text('Dermatologists'),
                          Text('(skin infection, hair\n & nail treatment)'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
