import 'package:flutter/material.dart';
import 'package:flutter_application/Men/menjeans.dart';
import 'package:flutter_application/Men/menshirt.dart';
import 'package:flutter_application/Men/mentshirt.dart';
import 'package:flutter_application/Men/mentshirtdetails.dart';

class MenPage extends StatelessWidget {
  const MenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Men's Fasion"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: const [
                Color(0xFFFFFFFF),
                Color(0xFF82D1DF),
                Color(0xFF00D9FF),
              ])),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(
                      "T-shirts",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        demoMenTshirt.length,
                        (index) =>
                            MenTshirtCard(menTshirt: demoMenTshirt[index])),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(
                      "Shirts",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Text('See More'),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        demoMenShirt.length,
                        (index) => MenShirtCard(
                              menShirt: demoMenShirt[index],
                            )),
                    SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(
                      "Jeans",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                        demoMenJeans.length,
                        (index) => MenJeansCard(
                              menJeans: demoMenJeans[index],
                            )),
                    SizedBox(
                      width: 25,
                    )
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

class MenTshirtCard extends StatelessWidget {
  const MenTshirtCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.menTshirt,
  }) : super(key: key);

  final double width, aspectRetion;
  final MenTshirt menTshirt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: AspectRatio(
                aspectRatio: aspectRetion,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    detailsofproduct: menTshirt,
                                  )));
                        },
                        child: Image.asset(
                          menTshirt.images[0],
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.9,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ])),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      menTshirt.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$${menTshirt.price}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.05,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Icon(
                            Icons.favorite,
                            color: menTshirt.isFavourite
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenShirtCard extends StatelessWidget {
  const MenShirtCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.menShirt,
  }) : super(key: key);

  final double width, aspectRetion;
  final MenShirt menShirt;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: AspectRatio(
                aspectRatio: aspectRetion,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          menShirt.images[0],
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ])),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      menShirt.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$${menShirt.price}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.05,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Icon(
                            Icons.favorite,
                            color: menShirt.isFavourite
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MenJeansCard extends StatelessWidget {
  const MenJeansCard({
    Key? key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.menJeans,
  }) : super(key: key);

  final double width, aspectRetion;
  final MenJeans menJeans;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          children: [
            SizedBox(
              width: width,
              child: AspectRatio(
                aspectRatio: aspectRetion,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          menJeans.images[0],
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.5,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ])),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      menJeans.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "\$${menJeans.price}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.05,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Icon(
                            Icons.favorite,
                            color: menJeans.isFavourite
                                ? Colors.red
                                : Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
