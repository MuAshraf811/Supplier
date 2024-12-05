import 'package:e_printer/core/utils/constants/category_constants.dart';
import 'package:e_printer/core/utils/constants/color_consatnts.dart';
import 'package:e_printer/core/utils/widgets/spacers.dart';
import 'package:e_printer/features/client/chat/presentation/widgets/chat_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailedPackagingView extends StatelessWidget {
  const DetailedPackagingView({super.key, required this.indx});
final int indx; 
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpacer(space: 16),
              const CustomAppbar(title: "Packaging View"),
              const VerticalSpacer(space: 12),
              const Text(
                "Aluminium Products",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), 
              ), 
                            const VerticalSpacer(space: 6),

               const Text(
                "Please , Choose your order carefully :",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: ColorConsatnts.red), 
              ),
              const VerticalSpacer(space: 18),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h), 
                  
                                  
                               itemCount: CategoryConstants.packageingItems(index:1)[indx].length ,
                  itemBuilder: (context, index) => Container( 
                    
                    decoration: BoxDecoration( 
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: ColorConsatnts.grey, width: 0.3.h), 
                      boxShadow: [ 
                        BoxShadow( 
                          color: ColorConsatnts.grey.withOpacity(0.5), 
                          blurRadius: 2.w, 
                          spreadRadius: 1, 
                          blurStyle: BlurStyle.normal,
                          offset: Offset(1.w, 2.h)
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
                          child: Image.asset( 
                            height: 120.h, 
                            width: double.infinity,
                            CategoryConstants.packageingItems(index: index+1)[indx]
                                    [index]
                                .image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const VerticalSpacer(space: 10),
                        Text(
                          CategoryConstants.packageingItems(index: index+1)[indx]
                                  [index]
                              .title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: ColorConsatnts.primary,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
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
