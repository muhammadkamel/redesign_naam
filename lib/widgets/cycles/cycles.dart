import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redesign_naam/components/bottom_nav_bar.dart';
import 'package:redesign_naam/components/constants.dart';
import 'package:redesign_naam/widgets/cycles/cycles_list.dart';

CarouselController controller = CarouselController();
// AnimationController _control;
Animation animation;

moveToMyPage(int page) => controller.animateToPage(page);
movePageZero(int zero) {
  if (zero == 0) {
    controller.animateToPage(
      0,
      duration: Duration(milliseconds: 10),
    );
  } else if (zero == 5) {
    controller.animateToPage(
      5,
      duration: Duration(milliseconds: 10),
    );
  }
}

class HomeCycles extends StatefulWidget {
  @override
  _HomeCyclesState createState() => _HomeCyclesState();
}

class _HomeCyclesState extends State<HomeCycles> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGlobalColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                width: double.infinity,
                alignment: Alignment.center,
//                decoration: BoxDecoration(color: Colors.green),
//                child: Text(
//                  'Active the best time for you!',
//                  style: TextStyle(fontSize: 28.0),
//                ),
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.5,
//                color: Colors.orange,
                child: CarouselSlider(
                  items: mySlider,
                  options: CarouselOptions(
                    // autoPlay: true,
                    // aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    // enlargeStrategy: CenterPageEnlargeStrategy.height,
                    height: MediaQuery.of(context).size.height * 0.9,
                    initialPage: 0,
                    scrollDirection: Axis.horizontal,
                    scrollPhysics: ScrollPhysics(),
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    pauseAutoPlayOnManualNavigate: true,
                    aspectRatio: 5.9,
                    carouselController: controller,
                  ),
                  carouselController: controller,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 52.0,
                    height: 52.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: FlatButton(
                      shape: CircleBorder(),
                      color: Colors.indigo[600],
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () {
                        setState(() {
                          controller.previousPage();
                        });
                      },
                    ),
                  ),
                  Container(
                    width: 52.0,
                    height: 52.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: FlatButton(
                      shape: CircleBorder(),
                      color: Colors.indigo[600],
                      padding: EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 24.0,
                      ),
                      onPressed: () {
                        setState(() {
                          controller.nextPage();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
