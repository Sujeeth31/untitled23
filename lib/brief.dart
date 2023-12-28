import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

List<String> items = [

      ' 1',
      '2',
      '3',
      '4',
       '5',
];

class brief extends StatefulWidget {
  const brief({super.key});

  @override
  State<brief> createState() => _briefState();
}

class _briefState extends State<brief> {
  String dropdownvalue =items.first;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar:  AppBar(
        //toolbarHeight: 50,
        backgroundColor:Colors.blueAccent,
        title: SizedBox(
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
              filled:true,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              labelText: "Search amazon.in",
              // hintStyle: as,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
              ),
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.qr_code_scanner),

            ),

          ),
        ),
      ),

      body: ListView(
        children:[Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 250.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction:1,
                      enlargeFactor: 0.1,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,

                    ),
                    itemBuilder: (BuildContext context,index,int)
                    {
                      return Container(
                        height: 350,
                        width: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("pi/hh.jpg"),fit: BoxFit.fill)),
                        //
                        // child:Stack(
                        //   children:[
                        //     Container(
                        //       height: 300,
                        //       width: 400,
                        //       decoration: BoxDecoration(
                        //           image: DecorationImage(
                        //               image: AssetImage("pi/hh.jpg"),fit: BoxFit.fill)),
                        //     ),
                        //
                        //   ],
                        // ),

                      );
                    },
                    itemCount: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height:43 ,
                      width: 43,
                      decoration: BoxDecoration(color: Colors.red,
                        borderRadius: BorderRadius.circular(250),
                      ),
                      child: Text(
                        "52% off",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12),
                      ),


                    ),
                  ),
                  Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.share_sharp),
                      ),right:10 ),
                  Positioned(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite,color: Colors.red),
                      ),bottom:10 ),
                ]
            ),
            Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                              text: 'Visit the boat Store',
                              style: TextStyle(color: Colors.blueAccent)
                          ),
                        ),
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("4.0"),
                        ),
                        RatingBar.builder(
                          initialRating: 4.5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 15,
                          // itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("36,799"),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReadMoreText("boAt Rockerz 370 On Ear Bluetooth Headphones with upto 12 Hours Playtime,Cozy Padded Earcups and Bluetooth v5.0,with Mic(Buoyant Black)",
                      trimLines: 3,
                      colorClickableText: Colors.black,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Column(
                    children: [
                      Divider(
                        height: 10,
                        thickness: 3,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("-52%",style: TextStyle(color: Colors.red,fontSize: 40),),
                      ),
                      Icon(Icons.currency_rupee,size: 20),
                      Text("1,199",style: TextStyle(color: Colors.black,fontSize: 40),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("M.R.P :",style: TextStyle(color: Colors.black)),
                        Icon(Icons.currency_rupee,size:14,),
                        Text("2,499",style: TextStyle(color: Colors.black,decoration: TextDecoration.lineThrough),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(children:[
                            TextSpan(text: ("E.M.I Starts at")),
                          ]

                          ),

                        ),
                        Icon(Icons.currency_rupee,size: 14,),
                        RichText(
                          text: TextSpan(
                              children:[
                                TextSpan(text: ("109.")),
                                TextSpan(text: (" EMI options"),style: TextStyle(color: Colors.blueAccent)),
                              ]

                          ),

                        ),

                      ],
                    ),
                  ),
                  Column(
                    children: [
                      RichText(
                        text: TextSpan(children:[
                          TextSpan(text: ("  Inclusive of all taxes")),
                        ]
                        ),

                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Divider(
                        height: 10,
                        thickness: 3,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ]
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 5),
              child: Row(
                children: [
                  RichText(text: TextSpan(text: " Total :")),
                  Icon(Icons.currency_rupee,size: 14,),
                  Text("1,199",style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(children: [
                TextSpan( text: "Free delivery",style: TextStyle(
                    color: Colors.blueAccent,fontSize: 16)),
                TextSpan( text: " Sunday,24 September.",style: TextStyle(
                    color: Colors.black,fontWeight:FontWeight.bold,fontSize: 16)),
                TextSpan(text:" Details",style: TextStyle(color: Colors.blueAccent,fontSize: 16) )
              ],
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(children: [
                TextSpan(text: "Or fastest delivery"),
                TextSpan(text: "TOMORROW, 23 September",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                TextSpan(text: " order")
              ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top:1.0,left: 10),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(text: "within"),
                    TextSpan(text: " 6 hrs 48 mins. Details",style: TextStyle(color: Colors.green,fontSize: 16)),
                  ])),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:22.0,left: 10),
                  child: Icon(Icons.location_city),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22.0,left: 10),
                  child: Text('Select delivery location',style: TextStyle(color: Colors.blueAccent,fontSize: 16),),
                )

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('In stock',style: TextStyle(color: Colors.green,),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(elevation: 10,
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child:Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Qty:",style: TextStyle(fontSize: 14),),
                        ),
                        DropdownButton<String>(

                          value: dropdownvalue,
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 16,
                          style: const TextStyle(),
                          underline: Container(
                            height: 1,
                            color: Colors.white,
                          ),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              dropdownvalue = value!;
                            });
                          },
                          items: items.map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),



                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 460,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Add to Cart"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 400,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Buy Now"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),),
              ),
            ),
          ],
        ),]

      ),




    );
  }
}
