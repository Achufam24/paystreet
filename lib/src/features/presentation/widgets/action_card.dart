import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:paystreet/src/app/styles/styles.dart';
import 'package:paystreet/src/core/constants/constant.dart';
import 'package:paystreet/src/core/utils/ui_helpers.dart';
import 'package:paystreet/src/features/data/data.dart';

class ActionButtons extends StatefulWidget {
  const ActionButtons({super.key});
 
  @override
  State<ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight(context) * 0.28,
      child: AlignedGridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                padding: const EdgeInsets.all(0),
                itemCount: actionButton.length,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                itemBuilder: (context, index) {
                  if (index < actionButton.length) {
                    final category = actionButton[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration:  BoxDecoration(
                        color: AppColors.white,
                        borderRadius:BorderRadius.circular(12)
                      ),
                      child: Column(
                        children: [
                          Container(
                          
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 12,
                            ),
                            decoration: BoxDecoration(
                              color: category.bgColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.asset(
                              category.icon,
                              width: 18.86.w,
                              height: 17.14.h,
                              
                            ),
                          ),
                          verticalSpaceSmall,
                           Text(
                              category.text,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: AppColors.textColor,
                                fontSize: 13,
                                fontFamily: AppFonts.manRope,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      width: 105,
                      height: 75,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 0.80, color: const Color(0x99D9DBDE)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.hourglass_empty_rounded),
                          verticalSpaceSmall,
                          Expanded(
                            child: Text(
                              'More', // Add any text or leave it blank
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: 13,
                                
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
    );
  }
}