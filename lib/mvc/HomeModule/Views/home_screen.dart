import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_management/mvc/HomeModule/Views/components/home_cart_list_screen.dart';
import 'package:restaurant_management/utils/extention.dart';
import 'package:restaurant_management/utils/styles/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = <Tab>[
      Tab(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text('Starters',
                style: GoogleFonts.inter(
                    fontSize: 10.sp, fontWeight: FontWeight.w400)),
          ),
        ),
      ),
      Tab(text: 'Breakfast'),
      Tab(text: 'Lunch'),
      Tab(text: 'Supper'),
      Tab(text: 'Deserts'),
      Tab(text: 'Beverages'),
    ];

    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10.h),
            child: Container(
              width: context.width * 0.7,
              color: Colors.white,
              child: Center(
                child: DefaultTabController(
                  length: myTabs.length,
                  child: Scaffold(
                    appBar: AppBar(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      centerTitle: false,
                      title: TabBar(
                        indicator: BoxDecoration(
                          border: Border.all(
                              width: 1, color: KColor.baseColor.color),
                          borderRadius:
                              BorderRadius.circular(2.r), // Creates border
                          color: KColor.baseColor.color.withOpacity(0.2),
                        ),
                        isScrollable: true,
                        labelColor: KColor.baseColor.color,
                        unselectedLabelColor: KColor.spinshGrey.color,
                        indicatorColor: Colors.transparent,
                        indicatorWeight: 1,
                        indicatorSize: TabBarIndicatorSize.tab,
                        onTap: (value) {
                          print(value);
                        },
                        tabs: myTabs,
                      ),
                    ),
                    body: TabBarView(
                      children: myTabs.map((Tab tab) {
                        final String? label = tab.text;
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                            itemCount: 100,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 200,
                                    childAspectRatio: 0.8,
                                    crossAxisSpacing: 20,
                                    mainAxisSpacing: 25),
                            itemBuilder: (BuildContext context, int index) {
                              return new Card(
                                child: new GridTile(
                                  child: new Text(
                                      "data[index]['image']"), //just for testing, will fill with image later
                                ),
                              );
                            },
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: context.width * 0.20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget defaultTabbarWidget(String name) {
    return Text(
      name,
      style: GoogleFonts.inter(
        fontSize: 12.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
