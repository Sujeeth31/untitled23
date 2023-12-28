

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'brief.dart';
import 'color.dart';
class amazon extends StatefulWidget {
  const amazon({super.key});
  @override
  State<amazon> createState() => _amazonState();
}

class _amazonState extends State<amazon> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        //toolbarHeight: 50,
        backgroundColor:abc,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                child: Container(
                  height: 60,
                  width: 70,
                  decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.location_city),
                        ),
                        Text("Select a location to see product availability",style: TextStyle(color: Colors.black),),
                        Icon(Icons.arrow_drop_down)

                      ],
                    ),
                  ),

                ),
              ),
              GestureDetector(onTap: (){
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const brief()),
                  );
                });
              },
                child: Container(
                  height: 120,
                  child:ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: 30,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 75,
                          width: 85,
                          child: Column(

                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: 70,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black54),
                                        shape: BoxShape.circle,
                                        image:DecorationImage(
                                            image: AssetImage("linux/ii.png"))
                                    )
                                ),
                              ),
                              // child: Image(image: AssetImage("linux/ii.png"),
                              // )
                              //),
                              Text("Enter"),
                            ],
                          ),
                        );
                      }),


                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 200.0,
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
                  return GestureDetector(onTap: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const brief()),
                      );
                    });
                  },
                    child: Container(
                      height: 200,
                      width: 400,

                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("pi/itr.jpeg"),fit: BoxFit.fill)),

                    ),
                  );
                },
                itemCount: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(25)),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 16,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Card(
                            elevation: 10,
                            child: Container(
                              height: 100,
                              width: 80,
                              decoration:BoxDecoration(border: Border.all()),
                              child: Container(
                                height: 200,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage("pi/picc.jpg"),
                                        fit: BoxFit.fill)),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Deals for you",style: TextStyle( fontSize: 22,color: Colors.black),),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 500,
                  child:
                  GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      //MediaQuery.of(context).orientation ==
                      //     Orientation.landscape ? 3: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: (2/2),
                      mainAxisExtent: 200,

                    ),
                    itemBuilder: (context,index,) {
                      return Card(
                        elevation: 50,
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          color: Colors.pink,
                          child: Column(
                            children: [
                              Container(
                                  height: 158,
                                  // width: 160,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("pi/pic.jpeg"),fit: BoxFit.fill))
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("65% off deal",style: TextStyle(fontSize:12,color: Colors.green),),
                              )
                            ],

                          ),
                        ),
                      );
                    },

                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}

