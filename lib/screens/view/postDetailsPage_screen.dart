import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:task/utils/colors.dart';

import '../../utils/mediaQuery.dart';
import '../../utils/style.dart';

class PostDetailsPage extends StatefulWidget {
  const PostDetailsPage({super.key});

  @override
  State<PostDetailsPage> createState() => _PostDetailsPageState();
}

class _PostDetailsPageState extends State<PostDetailsPage> {
  int currentSlide = 0;

  final List images = [
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Iconsax.arrow_left_2),
        centerTitle: true,
        title: const Text(
          "자유톡",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Iconsax.notification,
              color: iconGrey,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset('assets/images/profile.jpeg')),
                  ),
                  SizedBox(
                    width: SizeConfig.Width * 0.03,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "안녕 나 응애 ",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: CircleAvatar(
                              backgroundColor: green,
                              radius: 10,
                              child: Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 14.0,
                              ),
                            ),
                          ),
                          Text(
                            "1일전",
                            style: TextStyle(color: textGrey),
                          ),
                        ],
                      ),
                      Text(
                        "165cm * 53kg",
                        style: TextStyle(color: textGrey),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.Height * 0.02,
              ),
              const Text(
                "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
                style: TextStyle(fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: SizeConfig.Height * 0.02,
              ),
              const Text(
                "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ \n혹시 어떤 상품이 제일 괜찮았어? \n 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 \n제일 재밌었다던데 맞아???\n 올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가\n 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에\n있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
                style: TextStyle(color: text_0),
              ),
              SizedBox(
                height: SizeConfig.Height * 0.02,
              ),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: <Widget>[
                  Chip(label: const Text('#2023'), shape: chipDecoration),
                  Chip(label: const Text('#TODAYISMONDAY'), shape: chipDecoration),
                  Chip(label: const Text('#TOP'), shape: chipDecoration),
                  Chip(label: const Text('#POPS!'), shape: chipDecoration),
                  Chip(label: const Text('#WOW'), shape: chipDecoration),
                  Chip(label: const Text('#ROW'), shape: chipDecoration),
                ],
              ),
              SizedBox(
                height: SizeConfig.Height * 0.02,
              ),
              carausalSlider(),
              // const Placeholder(),
              SizedBox(
                height: SizeConfig.Height * 0.02,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.favorite_border_rounded,
                    color: iconGrey,
                    size: 32.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 18.0, color: textGrey),
                    ),
                  ),
                  Icon(
                    Iconsax.messages,
                    color: iconGrey,
                    size: 28.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "5",
                      style: TextStyle(fontSize: 18.0, color: textGrey),
                    ),
                  ),
                  Icon(
                    Icons.bookmark_border_rounded,
                    color: iconGrey,
                    size: 32.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.more_horiz_outlined,
                      color: iconGrey,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade100,
              ),
              Row(
                children: [
                  CircleAvatar(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset('assets/images/profile.jpeg')),
                  ),
                  SizedBox(
                    width: SizeConfig.Width * 0.03,
                  ),
                  const Text(
                    "안녕 나 응애 ",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: CircleAvatar(
                      backgroundColor: green,
                      radius: 10,
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 14.0,
                      ),
                    ),
                  ),
                  const Text(
                    "1일전",
                    style: TextStyle(color: textGrey),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.more_horiz_outlined,
                    color: iconGrey,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Text(
                  '어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_rounded,
                      color: iconGrey,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "5",
                        style: TextStyle(color: textGrey),
                      ),
                    ),
                    Icon(
                      Iconsax.messages,
                      color: iconGrey,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "5",
                        style: TextStyle(color: textGrey),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.asset('assets/images/profile_2.jpeg')),
                    ),
                    SizedBox(
                      width: SizeConfig.Width * 0.03,
                    ),
                    const Text(
                      "ㅇㅅㅇ ",
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    const Text(
                      "1일전",
                      style: TextStyle(color: textGrey),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.more_horiz_outlined,
                      color: iconGrey,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100.0),
                child: Text('오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다'),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 100.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite_border_rounded,
                      color: iconGrey,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "5",
                        style: TextStyle(color: textGrey),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade100,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    prefixIcon: Icon(Icons.image),
                    hintText: '댓글을 남겨주세요.',
                    hintStyle: TextStyle(color: textGrey),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(14.0),
                      child: Text("등록"),
                    ),
                    border: InputBorder.none),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget carausalSlider() {
    return Stack(
      children: [
        CarouselSlider.builder(
          itemCount: 4,
          itemBuilder: (
            BuildContext context,
            int itemIndex,
            int pageViewIndex,
          ) =>
              Container(
                  color: iconGrey,
                  child: Image.network(
                    'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',
                    fit: BoxFit.cover,
                  )),
          options: CarouselOptions(
              autoPlay: false,
              enableInfiniteScroll: false,
              enlargeFactor: 0.18,
              viewportFraction: 1.0,
              disableCenter: true,
              enlargeCenterPage: true,
              height: SizeConfig.Height * 0.4,
              onPageChanged: (index, reason) {
                setState(() {
                  currentSlide = index;
                });
              }),
        ),
        Positioned(
          bottom: 15,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((image) {
              int index = images.indexOf(image);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentSlide == index ? Colors.white : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
