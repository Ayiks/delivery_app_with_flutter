import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimension.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetails extends StatelessWidget {
  const RecommendedFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(top: 5, bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Dimensions.radius20),
                            topRight: Radius.circular(Dimensions.radius20))),
                    child: Center(
                        child: BigText(
                      text: 'Chinese Side ',
                      size: Dimensions.font26,
                    ))),
                preferredSize: Size.fromHeight(20)),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          'Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something Lorem Ispum Something something, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor, color: AppColors.paraColor,'),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20 * 2.5,
                right: Dimensions.width20 * 2.5,
                top: Dimensions.height10,
                bottom: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: '\$12.88 ' + ' x ' + ' 0 ',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width30,
                right: Dimensions.width20),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20 * 2),
                    topRight: Radius.circular(Dimensions.radius20 * 2))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(
                    text: '\$10 | Add to cart',
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
