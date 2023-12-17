import 'package:flutter/material.dart';
import 'package:slash_task/generated/assets.dart';
import 'package:slash_task/presentation/details_screen.dart';
import 'package:slash_task/resources/colorManager.dart';

import '../model/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final List<Products>_listOfProducts=[
     Products(name: 'Training Top Nike Sport Clash',price: 122.58, image: Assets.imagesProduct3,description:  'The Adidas Throwback Pullover Hoodie is made from premium French terry fabric that blends',brandName:  'Adidas',rating:  5,
        imageDetails:  [Assets.imagesDetails1,Assets.imagesDetails2,Assets.imagesDetails3,Assets.imagesDetails4]),
     Products(name: 'Trail Running Jacket Nike Windrunner',price: 100,image:  Assets.imagesProduct4,description:  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...', brandName: 'Adidas',rating:  4.2,
        imageDetails:  [Assets.imagesProduct4]),
     Products(name: 'Mens Tie-Dye T-Shirt Nike Sportswear',price:  70,image: Assets.imagesProduct5,description:  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...', brandName: 'Adidas', rating: 5,imageDetails: [
       Assets.imagesProduct5
     ]),
     Products(name: 'Trail Running Jacket Nike Windrunner', price: 80, image: Assets.imagesProduct6,description:  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...', brandName: 'Adidas', rating: 3.8,imageDetails: [
       Assets.imagesProduct6
     ]),
     Products(name: 'Nike Club Fleece',price: 99, image: Assets.imagesProduct1,description:  'The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends',brandName:  'Nike',rating:  4.8,imageDetails: [
       Assets.imagesProduct1
     ]),
     Products(name: 'Trail Running Jacket Nike Windrunner', price: 120,image: Assets.imagesProduct2,description:  'The Fila Throwback Pullover Hoodie is made from premium French terry fabric that blends', brandName: 'Fila', rating: 3,imageDetails: [
       Assets.imagesProduct2
     ]),

   ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: ColorManager.primary,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child:  Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage(Assets.imagesMenu)),
                    Image(image: AssetImage(Assets.imagesCart)),
                  ],
                ),
                Wrap(
                  spacing: 12,
                  children: List.generate(6,
                          (index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            DetailsScreen(_listOfProducts[index])));
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width/2-40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Card(
                              elevation: 0,
                              color: Colors.transparent,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(15),
                                    ),
                                  ),
                                  child: Image(image:  AssetImage(_listOfProducts[index].image.toString()),height: 203,)),
                            ),
                            Text(
                              _listOfProducts[index].name.toString(),
                              style: const TextStyle(
                                color: Colors.white
                              ),
                            ),
                            Text(
                              '${_listOfProducts[index].price}\$',
                              style: const TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                          }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
