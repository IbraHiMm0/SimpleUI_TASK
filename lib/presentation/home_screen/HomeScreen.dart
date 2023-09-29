import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simpleui/presentation/resources/assets_manager.dart';
import 'package:simpleui/presentation/resources/routes_manager.dart';
import 'package:simpleui/presentation/resources/styles_manager.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> list = [
    ImageAssets.furniture,
    ImageAssets.furniture2,
    ImageAssets.furniture3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf5f6fa),
      body: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 30.0, top: 40.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: List.filled(
                              1,
                              const BoxShadow(
                                  blurRadius: 20,
                                  color: Colors.black12,
                                  offset: Offset(7, 5)))),
                      child: TextFormField(
                        // style: getRegularStyle(color: Colors.grey,fontSize: 20),
                        style: const TextStyle(
                          fontSize: 20,
                          height: 1,
                          fontWeight: FontWeight.normal,
                        ),
                        decoration: InputDecoration(
                            hintText: 'Search',
                            hintStyle: const TextStyle(
                                color: Colors.black26,
                                fontStyle: FontStyle.italic),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 10),
                              child: Icon(
                                Icons.search_rounded,
                                size: 35,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 8,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          size: 35,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  Text(
                    'Explore',
                    style:
                        getSemiBoldStyle(color: Colors.black87, fontSize: 30),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              CarouselSlider(
                  items: list
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, Routes.productDetails);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35),
                                color: Colors.white,
                                // boxShadow: List.filled(
                                //     1,
                                //     const BoxShadow(
                                //         blurRadius: 20, color: Colors.black12,offset: Offset(-10,0))),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          child: Image(
                                            image: AssetImage(
                                              e.toString(),
                                            ),
                                            height: 250,
                                            width: 250,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.redAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Icon(
                                                    Icons.favorite,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                ))),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Item Name',
                                          style: getSemiBoldStyle(
                                              color: Colors.black87,
                                              fontSize: 20.0),
                                        ),
                                        Text('Description',
                                            style: getRegularStyle(
                                                color: Colors.black26,
                                                fontSize: 15.0)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\$250,00',
                                          style: getRegularStyle(
                                              color: Colors.black54,
                                              fontSize: 20.0),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black87,
                                                  borderRadius:
                                                      BorderRadius.circular(20)),
                                              child: const Padding(
                                                padding: EdgeInsets.all(4.0),
                                                child: Icon(Icons.add,
                                                    color: Colors.white),
                                              )),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    height: 420,
                    autoPlay: true,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Text(
                    'Best Selling',
                    style:
                        getSemiBoldStyle(color: Colors.black87, fontSize: 25),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage(
                            ImageAssets.furniture,
                          ),
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Minimal Chair',
                          style: getSemiBoldStyle(
                              color: Colors.black87, fontSize: 20.0),
                        ),
                        Text('Lorem Ipsum',
                            style: getRegularStyle(
                                color: Colors.black26, fontSize: 15.0)),
                        Text(
                          '\$125,00',
                          style: getRegularStyle(
                              color: Colors.black54, fontSize: 15.0),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(-10, 30),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, Routes.cart);

                          },
                          icon: Container(
                            decoration: BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
