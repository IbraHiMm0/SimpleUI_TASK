import 'package:flutter/material.dart';

import '../resources/assets_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/styles_manager.dart';

class CartScreen extends StatefulWidget {

  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
    int num=1;
    int num1=1;
    int num2=1;

   bool value = false;
   bool value1 = false;
   bool value2= false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
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
                      'Cart',
                      style: getRegularStyle(color: Colors.black87,fontSize: 20),
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                   children: [
                     Checkbox(
                       value: value,
                       activeColor: Colors.redAccent,
                       onChanged: (bool? value) {
                         setState(() {
                           this.value = value!;
                         });
                       },
                     ),
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
                           'Minimalist Chair',
                           style: getSemiBoldStyle(
                               color: Colors.black87, fontSize: 20.0),
                         ),
                         const SizedBox(
                           height: 30,
                         ),
                         Text(
                           '\$125,00',
                           style: getRegularStyle(
                               color: Colors.redAccent, fontSize: 20.0),
                         ),
                       ],
                     ),
                     Transform.translate(
                       offset: const Offset(-30, 30),
                       child: Container(
                         padding: const EdgeInsets.symmetric(horizontal: 5),
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(30),
                             border: Border.all(
                               color: Colors.black26
                             ),
                             color: Colors.transparent),
                         child: Row(
                           children: [
                             InkWell(
                                 onTap: () {
                                   setState(() {
                                     if(num>0){

                                     num--;
                                     }
                                   });
                                 },
                                 child: const Icon(
                                   Icons.remove,
                                   color: Colors.black26,
                                   size: 16,
                                 )),
                             Container(
                               margin: const EdgeInsets.symmetric(horizontal: 3),
                               padding:
                               const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(3),
                                   color: Colors.white),
                               child:  Text(
                                 '$num',
                                 style: TextStyle(color: Colors.black, fontSize: 16),
                               ),
                             ),
                             InkWell(
                                 onTap: () {
                                   setState(() {
                                     num++;
                                   });
                                 },
                                 child: const Icon(
                                   Icons.add,
                                   color: Colors.black26,
                                   size: 16,
                                 )),
                           ],
                         ),
                       ),
                     ),
                   ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                    Checkbox(
                      value: value1,
                      activeColor: Colors.redAccent,
                      onChanged: (bool? value1) {
                        setState(() {
                          this.value1 = value1!;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage(
                            ImageAssets.furniture2,
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
                          'Minimalist Chair',
                          style: getSemiBoldStyle(
                              color: Colors.black87, fontSize: 20.0),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          '\$125,00',
                          style: getRegularStyle(
                              color: Colors.redAccent, fontSize: 20.0),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(-30, 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Colors.black26
                            ),
                            color: Colors.transparent),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    if(num1>0){

                                      num1--;
                                    }
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.black26,
                                  size: 16,
                                )),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white),
                              child:  Text(
                                '$num1',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    num1++;
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black26,
                                  size: 16,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                    Checkbox(
                      value: value2,
                      activeColor: Colors.redAccent,
                      onChanged: (bool? value2) {
                        setState(() {
                          this.value2 = value2!;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                          image: AssetImage(
                            ImageAssets.furniture3,
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
                          'Minimalist Chair',
                          style: getSemiBoldStyle(
                              color: Colors.black87, fontSize: 20.0),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          '\$125,00',
                          style: getRegularStyle(
                              color: Colors.redAccent, fontSize: 20.0),
                        ),
                      ],
                    ),
                    Transform.translate(
                      offset: const Offset(-30, 30),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: Colors.black26
                            ),
                            color: Colors.transparent),
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    if(num2>0){

                                      num2--;
                                    }
                                  });
                                },
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.black26,
                                  size: 16,
                                )),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              padding:
                              const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: Colors.white),
                              child:  Text(
                                '$num2',
                                style: TextStyle(color: Colors.black, fontSize: 16),
                              ),
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    num2++;
                                  });
                                },
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.black26,
                                  size: 16,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                decoration:  BoxDecoration(
                  color: Colors.white,
                    boxShadow: List.filled(
                        1,
                        const BoxShadow(
                            blurRadius: 20,
                            color: Colors.black12,
                            offset: Offset(7, 5))),
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Selected Items',
                            style: getRegularStyle(
                                color: Colors.black87, fontSize: 17.0),
                          ),
                          Text(
                            '\$235,00',
                            style: getRegularStyle(
                                color: Colors.redAccent, fontSize: 15.0),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping Fee',
                            style: getRegularStyle(
                                color: Colors.black87, fontSize: 17.0),
                          ),
                          Text(
                            '\$30,00',
                            style: getRegularStyle(
                                color: Colors.redAccent, fontSize: 15.0),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Divider(
                          color: Colors.grey.shade300,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal',
                            style: getBoldStyle(
                                color: Colors.black87, fontSize: 25.0),
                          ),
                          Text(
                            '\$265,00',
                            style: getBoldStyle(
                                color: Colors.redAccent, fontSize: 25.0),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(onTap: () {

                          },
                              child:  ClipRRect(
                                borderRadius:  BorderRadius.circular(40),
                                child: Container(

                                  color: const Color(0xFF24293D),width:320,
                                  height: 70,
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Checkout',style: TextStyle(color: Colors.white,fontSize: 20),),
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
