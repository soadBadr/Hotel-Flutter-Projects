//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


//import 'package:booking_calendar/booking_calendar.dart';


class Helnan extends StatefulWidget {

  @override
  _HelnanState createState() => _HelnanState();



}
class _HelnanState extends State<Helnan> {
  DateTime today = DateTime.now();
  var _ratingValue = 0.0;
  int s=0;
  bool isReadMore= false;
  bool pressGeoON = false;
  bool cmbscritta = false;


  @override

  Widget build(BuildContext context) {

    var singleChildScrollView = SingleChildScrollView();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 9, 102),
        title: Text('Helnan Royal Hotel' ),
        centerTitle: true,
      ),
      body:

      SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.horizontal, // <-- Like so
                              children:[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/Helnan1.JPG",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/Helnan2.JPG",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/Helnan3.JPG",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/Helnan4.JPG",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      "assets/images/Helnan5.JPG",
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(

              width: 10,
              height: 10,
            ),

            Padding(

              padding: EdgeInsets.only(left: 4.0, top: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            children: [
                              Text('Helnan Royal Hotel',

                                style: TextStyle(
                                  fontSize: 25,color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),),

                            ]
                        ),
                        Row(
                            children:[RatingBar(
                                initialRating: 0,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                ratingWidget: RatingWidget(
                                    full: const Icon(Icons.star, color: Color.fromARGB(255, 15, 9, 102)),
                                    half: const Icon(
                                      Icons.star_half,
                                      color: Color.fromARGB(255, 15, 9, 102),
                                    ),
                                    empty: const Icon(
                                      Icons.star_outline,
                                      color: Color.fromARGB(255, 15, 9, 102),
                                    )),
                                onRatingUpdate: (value) {
                                  setState(() {
                                    _ratingValue = value;
                                  });
                                }),
                              SizedBox(width: 20,),
                              Container(
                                alignment: Alignment.topRight,
                                width: 50.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 15, 9, 102),
                                ),
                                child: Center(
                                  child: Text(_ratingValue.toString(),
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 18,
                                      color: Colors.white,
                                      height: 1,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),]
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(height: 10,),
                        Row(
                            children: [
                              Text('Price per night ',
                                style: TextStyle(
                                    fontSize: 18,color: Colors.black
                                ),),
                            ]
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children:[
                            Text(
                              ' 1,605 EGP ',
                              style: TextStyle (
                                fontWeight: FontWeight.bold,
                                fontSize: 25,

                                color: Colors.black,

                              ),
                            ),],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Property Description: ',
                          style: TextStyle (
                            fontWeight: FontWeight.bold,
                            fontSize: 30,

                            color: Colors.black,

                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(

                          children: [

                            buildText("Set on 350 acres of lush gardens overlooking a Mediterranean cove, Helnan Royal Hotel - Palestine features an outdoor pool and private seafront sun terrace. All rooms have free internet access and balconies with sea views."
                                "All the rooms of the Helnan Palestine are spacious and offer luxurious furnishings. They feature oriental carpeting, hot drink facility and a satellite TV. Some rooms look out on the historic Montaza Palace.\n"
                                "Palestine Hotel’s restaurants and bar offer a wide range of food and beverages, both indoors and outdoors.\n"
                                "The Bodega Pub provides night-time entertainment in a stylish setting."
                                "The Helnan’s quiet, secluded location is only 12 km from the bustle of Alexandria city centre and just steps away from the sandy beach.\n "
                                "Couples particularly like the location — they rated it 8.4 for a two-person trip."
                              ,
                            ),
                            ElevatedButton(

                                onPressed: () {
                                  setState(() {
                                    isReadMore =!isReadMore;

                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,// Background color
                                ),
                                child: Text((isReadMore?'Read less' : 'Read more'))),



                          ],
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(height: 10,),
                        Text(
                          'General Features ',
                          style: TextStyle (
                            fontWeight: FontWeight.bold,
                            fontSize: 30,

                            color: Colors.black,

                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          " Facilities for disabled guests    \n"
                              " Bar     \n"
                              " Spa and wellness centre    \n"
                              " Private beach area        \n"
                              " Beachfront      \n"
                              " Fitness centre       \n"
                              " Tea/coffee maker in all rooms       \n"
                          ,

                          style: TextStyle (
                            fontSize: 20,
                            color: Colors.black,

                          ),
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(height: 15,),

                        Text(
                          'Amenities ',
                          style: TextStyle (
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black,

                          ),
                        ),
                        SizedBox(height: 10,),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(

                            children: [

                              IconButton(
                                onPressed: () {},
                                color: Color.fromARGB(255, 15, 9, 102),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.wifi,
                                ),
                              ),

                              Text('Free WiFi' ,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  //backgroundColor: Colors.cyan
                                ),) ,
                              IconButton(
                                onPressed: () {},
                                color: Color.fromARGB(255, 15, 9, 102),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.smoke_free_outlined,
                                ),
                              ),
                              Text('Non-smoking rooms' ,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  //backgroundColor: Colors.cyan
                                ),) ,
                              IconButton(
                                onPressed: () {},
                                color: Color.fromARGB(255, 15, 9, 102),
                                iconSize: 30,
                                icon: Icon(
                                  Icons.device_thermostat,
                                ),
                              ),
                              Text('Air conditioning' ,
                                style: TextStyle(
                                  fontSize: 15.5,
                                  //backgroundColor: Colors.cyan
                                ),) ,


                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  color: Color.fromARGB(255, 15, 9, 102),
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.remove_red_eye_outlined,
                                  ),
                                ),
                                Text('Sea View' ,
                                  style: TextStyle(
                                    fontSize: 15.5,
                                    //backgroundColor: Colors.cyan
                                  ),) ,

                                IconButton(
                                  onPressed: () {},
                                  color:Color.fromARGB(255, 15, 9, 102),
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.pool,
                                  ),
                                ),
                                Text('Outdoor pool ' ,
                                  style: TextStyle(
                                    fontSize: 15.5,
                                    //backgroundColor: Colors.cyan
                                  ),) ,
                                IconButton(
                                  onPressed: () {},
                                  color: Color.fromARGB(255, 15, 9, 102),
                                  iconSize: 30,
                                  icon: Icon(
                                    Icons.bathroom,
                                  ),
                                ),
                                Text('Private bathroom' ,
                                  style: TextStyle(
                                    fontSize: 15.5,
                                    //backgroundColor: Colors.cyan
                                  ),) ,

                              ],
                            ),

                          ),

                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        Column(

                            children: [
                              Container(
                                margin: EdgeInsets.all(20),
                                child: RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(18.0),
                                        side: BorderSide(color: Color.fromARGB(255, 15, 9, 102),)),
                                    color: pressGeoON ? Colors.green : Color.fromARGB(255, 15, 9, 102),
                                    textColor: Colors.white,
                                    child: cmbscritta ? Text("booked") : Text("book"),

                                    onPressed: () {
                                      setState(() {
                                        debugPrint("booked ");
                                        pressGeoON = !pressGeoON;
                                        cmbscritta = !cmbscritta;
                                      });
                                    }
                                ),

                              ),
                            ]
                        ),
                        Divider(color: Color.fromRGBO(173, 175, 178, .5),thickness: 8,),
                        SizedBox(height: 10,),
                      ],

                    ),

                  ),
                ),
              ),
            ),


          ],


        ),

      ),


    );

  }

  Widget buildText(String text){
    final Lines = isReadMore? null : 2;
    return Text(

      text,
      style: TextStyle (
        fontSize: 20,
        color: Colors.black,

      ),
      maxLines: Lines,
      overflow: isReadMore? TextOverflow.visible : TextOverflow.ellipsis,
    );
  }


}