import 'package:flutter/material.dart';
import 'package:glorytodoapp/data/data.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<SliderModel> slides = new List<SliderModel>();
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.grey : Colors.grey.shade300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: slides.length,
          onPageChanged: (val) {
            setState(() {
              currentIndex = val;
            });
          },
          itemBuilder: (context, index) {
            return SliderTile(slides[index].getImageAssetPath(),
                slides[index].getTitle(), slides[index].getDesc());
          }),
      bottomSheet: currentIndex != slides.length
          ? Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Text("GEÇ"),
                  ),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false)
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text("BAŞLA"),
                  ),
                ],
              ),
            )
          : Container(),
    );
  }
}

class SliderTile extends StatelessWidget {
  String imageAssetPath, title, desc;
  SliderTile(this.imageAssetPath, this.title, this.desc);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Image.asset(
              imageAssetPath,
              height: 400,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 28,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 20),
            child: Text(desc,
                style: TextStyle(
                  fontFamily: "Roboto-Thin",
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                )),
          )
        ],
      ),
    );
  }
}
