//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


//import 'package:booking_calendar/booking_calendar.dart';


class Sunrise extends StatefulWidget {

  @override
  _SunriseState createState() => _SunriseState();



}
class _SunriseState extends State<Sunrise> {
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
        title: Text('Sunrise Garden Beach Resort' ),
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
                                      "assets/images/Sunrise1.JPG",
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
                                      "assets/images/Sunrise2.JPG",
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
                                      "assets/images/Sunrise3.JPG",
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
                                      "assets/images/Sunrise4.JPG",
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
                                      "assets/images/Sunrise5.JPG",
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
                              Text('Sunrise Garden Beach \n'
                                  'Resort Hotel',

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
                              ' 4,444 EGP ',
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

                            buildText("Located on the Red Sea coast in Hurghada, this 5-star all-inclusive hotel offers private beach access and an international diving center. It features 3 swimming pools, 3 restaurants and a spa and wellness center."
                                "All guest bedrooms at Sunrise Select Garden Beach Resort have air conditioning.a minibar and a satellite TV.\n"
                                "In addition, every room has a balcony or terrace, with garden, pool or sea views.Guests have a choice of 3 restaurants, serving Italian.\n"
                                "Oriental and International cuisine. Sunrise Select Garden Beach Resort also features 2 pubs and 4 bars, including a Pool Bar and a Beach Bar"
                                "The hotel has extensive recreation facilities, including floodlit tennis courts. "
                                "a beach volleyball court, archery, horse riding and a full-sized football pitch.It also features the Horas Spa, where guests can relax with a massage or beauty treatment."
                                "The property has new aqua park featuring 8 slides and kid’s play zone with slides adapted to small children.\n"
                                "Sunrise Select Garden Beach Resort & Spa is 13 km from Hurghada International Airport. Free on-site car parking is available.",
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
                          "very good fitness centre    \n"
                              " Bar     \n"
                              " Restaurant     \n"
                              "Private beach area        \n"
                              "Free parking      \n"
                              "Foot bath       \n"
                              "Tea/coffee maker in all rooms       \n"
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
                                    Icons.cleaning_services,
                                  ),
                                ),
                                Text('Daily housekeeping ' ,
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
                                      debugPrint("booked ");
                                      setState(() {
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