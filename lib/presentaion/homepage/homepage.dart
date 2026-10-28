import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  //Bổ sung code function
  List<String> images = ['images/banner.png', 'images/banner-2.png'];
  PageController _dotController = PageController();

  Timer? time;
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //KIỂM TRA XEM TIME CÓ KẾT NỐI VỚI PAGEVIEW HAY KHÔNG, NẾU CÓ THÌ MỖI 0.5 GIÂY THÌ CHUYỂN SANG HÌNH TIẾP THEO
    try {
      time = Timer.periodic(Duration(seconds: 3), (timer) {
        //TH: 4 cái hình: (0,1,2,3)
        currentIndex = (currentIndex + 1) % images.length;
        print('Chuyển sang hình: $currentIndex');
        _dotController.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 500),//đợi 0.5 giây để chuyển sang hình tiếp theo
          curve: Curves.easeInOut,
        );
      });
    } catch (e) {
      print('Lỗi khi tạo timer');
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //HỦY TIMER KHI KHÔNG CẦN DÙNG NỮA
    time?.cancel();
    //HỦY CONTROLLER KHI KHÔNG CẦN DÙNG NỮA
    _dotController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  child: PageView.builder(
                    controller: _dotController, //id phải giống với SmoothPageIndicator
                    onPageChanged: (index) {
                      currentIndex = index;
                    },
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(images[index]));
                    },
                  ),
                ),
                SmoothPageIndicator(
                  controller: _dotController,
                  onDotClicked: (index) {
                    currentIndex = index;
                    print('Chuyển sang hình: $currentIndex');
                  },
                  count: images.length,
                  effect: ScaleEffect(dotHeight: 20, dotWidth: 20),
                ),
          
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length, 
                    itemBuilder: (context, index){
                      return Container(
                        width: 300,
                        height: 300,
                        padding: EdgeInsets.all(8),
                        child: Image.asset(images[index]));
                    }),
                ),
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length, 
                    itemBuilder: (context, index){
                      return Container(
                        width: 300,
                        height: 300,
                        padding: EdgeInsets.all(8),
                        child: Image.asset(images[index]));
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
