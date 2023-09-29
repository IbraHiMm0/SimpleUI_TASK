import 'package:flutter/material.dart';
import 'package:simpleui/presentation/resources/routes_manager.dart';
import 'package:simpleui/presentation/resources/string_manager.dart';
import 'package:simpleui/presentation/resources/styles_manager.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../resources/assets_manager.dart';

class ProductDetails extends StatefulWidget {

  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
   var rating = 0.0;
    int selectedOption=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Transform.translate(
                  offset:const Offset(0, -40),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
                    child: Image(
                      image: AssetImage(
                        ImageAssets.furniture,
                      ),
                      height: 500,
                      width: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Transform.translate(
                  offset: const Offset(-20, -20),
                  child: IconButton(
                      onPressed: () {},
                      icon: Container(

                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: List.filled(1, const BoxShadow(
                              blurRadius: 35,color: Colors.grey
                            )),
                            borderRadius:
                            BorderRadius.circular(30),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.redAccent,
                              size: 27,
                            ),
                          ))),
                ),

              ],
            ),
            Transform.translate(
              offset: const Offset(0, -470),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context,Routes.homePage );
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    'Product',
                    style: getSemiBoldStyle(color: Colors.black87,fontSize: 20),
                  ),
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Transform.translate(
                        offset:const Offset(-5, 6),
                        child: const CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          radius: 6,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                          size: 25,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Transform.translate(
              offset: const Offset(0, -70),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('\$115.00',style: getBoldStyle(color: Colors.redAccent,fontSize: 30),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Minimal Chair',style: getBoldStyle(color: Colors.black87,fontSize: 20),),
                        SmoothStarRating(
                          rating: rating,

                          filledIconData: Icons.star,
                          halfFilledIconData: Icons.star_half,
                          defaultIconData: Icons.star_border,
                          starCount: 5,
                          allowHalfRating: true,
                          spacing: 2.0,
                          color: Colors.orange,
                          onRatingChanged: (value) {
                            setState(() {
                              rating = value;
                            });
                          },
                        ),


                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Row(
                      children: [
                        Text('Color option'),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Radio(value: 1, groupValue: selectedOption, onChanged: (value) {

                        },
                        activeColor: Colors.grey),
                        Radio(value: 0, groupValue: selectedOption, onChanged: (value) {

                        },
                            activeColor: Colors.grey),
                        Radio(value: 0, groupValue: selectedOption, onChanged: (value) {

                        }, activeColor: Colors.black87),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Text('Description',style: getSemiBoldStyle(color: Colors.black87,fontSize: 15),),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width:350,
                          child: Text(AppStrings.lorem,style: TextStyle(
                              color: Colors.grey,fontSize: 15,
                              wordSpacing: 2.0,

                          ),),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.cart);

                },
                    child:  ClipRRect(
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(40)),
                      child: Container(
                        color: const Color(0xFF24293D),width:200,
                        height: 80,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white),
                            Text('Add to Cart',style: TextStyle(color: Colors.white,fontSize: 20),),
                          ],
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
