import 'package:flutter/material.dart';
import 'package:slash_task/generated/assets.dart';
import 'package:slash_task/model/product_model.dart';
import 'package:slash_task/resources/colorManager.dart';

class DetailsScreen extends StatefulWidget {
  Products products;
  DetailsScreen(this.products);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState(products);
}

class _DetailsScreenState extends State<DetailsScreen> {
  Products products;
  _DetailsScreenState(this.products);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                Image(image: AssetImage(products.image.toString()),),
                Container(
                  decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(12),
                      topEnd: Radius.circular(12)
                    )
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              products.name.toString(),
                              style: const TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Text(
                            '${products.price}\$',
                            style: const TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        height: 80,
                        child: ListView.separated(
                          shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index)=>Container(
                              width: 77,
                              height: 77,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage(products.imageDetails![index]))
                              ),
                            ),
                            separatorBuilder: (context,index)=>
                            const SizedBox(width: 8,),
                            itemCount: products.imageDetails.length
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Berand Name : ${products.brandName}',
                              style: const TextStyle(
                                  color: Colors.white
                              ),
                            ),
                          ),
                          Text(
                            '${products.rating} Rating',
                            style: const TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        'Description : \n${products.description}',
                        style: const TextStyle(
                            color: Colors.white
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Image(image: AssetImage(Assets.imagesSizeProduct)),
                      const SizedBox(height: 200,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
