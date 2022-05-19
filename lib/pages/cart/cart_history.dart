import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/cart_controller.dart';
import 'package:food_delivery/utils/app_constant.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimension.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

class CartHistory extends StatelessWidget {
  const CartHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Map<String, int> cartItemsPerOrder = Map();
    var getCartHistoryList = Get.find<CartController>().getCartHistoryList();
    for(int i = 0; i<getCartHistoryList.length; i++){
      if(cartItemsPerOrder.containsKey(getCartHistoryList[i].time)){
        cartItemsPerOrder.update(getCartHistoryList[i].time!, (value) => ++value);
      } else {
        cartItemsPerOrder.putIfAbsent(getCartHistoryList[i].time!,()=>1);
      }
    }

    List<int> cartOrderTimeToList(){
      return cartItemsPerOrder.entries.map((e) => e.value).toList();
    }
    List<int> orderTimes = cartOrderTimeToList();

    List<int> itemsPerOrder = cartOrderTimeToList();

    var listCounter = 0;

    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 100,
            color: AppColors.mainColor,
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BigText(text: 'Cart History', color: Colors.white,),
              AppIcon(icon: Icons.shopping_cart, iconColor: AppColors.mainColor,backgroundColor: AppColors.yellowColor,)
            ],
          ),),
          Expanded(
              child: Container(
            margin: EdgeInsets.only(
              top: Dimensions.height10,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(
                  children: [
                    for(int i=0; i<itemsPerOrder.length; i++)
                      Container(
                        margin: EdgeInsets.only(bottom: Dimensions.height20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: '2022/05/27 '),
                            SizedBox(height: Dimensions.height10,),
                            Row(
                              children: [
                                Wrap(
                                  direction: Axis.horizontal,
                                  children: List.generate(itemsPerOrder[i], (index) {
                                    if(listCounter < getCartHistoryList.length){
                                      listCounter++;
                                    }
                                    return index <= 2?
                                    Container(
                                      width: 80,
                                      height: 80,
                                      margin: EdgeInsets.only(left: Dimensions.width10/2),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(Dimensions.radius15/2),
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: NetworkImage(
                                                  AppConstants.BASE_URL +AppConstants.UPLOAD_URL +getCartHistoryList[listCounter - 1].img!
                                              )
                                          )
                                      ),
                                    ):
                                    Container();
                                  }),
                                ),
                                Container()
                              ],
                            )
                          ],
                        ),

                      )
                  ],
                )),
          ))
        ],
      ),
    );
  }
}
