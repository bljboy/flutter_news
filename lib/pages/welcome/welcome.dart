import 'package:flutter/material.dart';
import 'package:flutter_news/common/utils/utils.dart';
import 'package:flutter_news/common/values/values.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key key}) : super(key: key);

  /// 页头标题
  Widget _buildPageHeadTitle() {
    return Container(
      margin: EdgeInsets.only(top: duSetHeight(65)),
      child: Text(
        "Features",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.primaryText,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          fontSize: duSetFontSize(24),
        ),
      ),
    );
  }

  /// 页头说明
  Widget _buildPageHeaderDetail() {
    return Container(
      width: duSetWidth(242),
      height: duSetHeight(70),
      margin: EdgeInsets.only(top: duSetHeight(14)),
      child: Text(
        "The best of news channels all in one place. Trusted sources and personalized news for you.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColor.primaryText,
          fontFamily: "Avenir",
          fontWeight: FontWeight.normal,
          fontSize: duSetFontSize(16),
          height: 1.3,
        ),
      ),
    );
  }

  /// 特性说明
  /// 宽度 80 + 20 + 195 = 295
  Widget _buildFeatureItem(String imageName, String intro, double marginTop) {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(80),
      margin: EdgeInsets.only(top: duSetHeight(marginTop)),
      child: Row(
        children: [
          Container(
            width: duSetWidth(80),
            height: duSetWidth(80),
            child: Image.asset(
              "assets/images/$imageName.png",
              fit: BoxFit.none,
            ),
          ),
          Spacer(),
          Container(
            width: duSetWidth(195),
            child: Text(
              intro,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColor.primaryText,
                fontFamily: "Avenir",
                fontWeight: FontWeight.normal,
                fontSize: duSetFontSize(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 开始按钮
  Widget _buildStartButton() {
    return Container(
      width: duSetWidth(295),
      height: duSetHeight(44),
      margin: EdgeInsets.only(bottom: duSetHeight(20)),
      child: FlatButton(
        color: AppColor.primaryElement,
        textColor: AppColor.primaryElementText,
        child: Text(
          "Get started",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: duSetFontSize(18),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(duSetWidth(6))),
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildPageHeadTitle(),
            _buildPageHeaderDetail(),
            _buildFeatureItem(
              "feature-3",
              "Compelling photography and typography provide a beautiful reading",
              40,
            ),
            _buildFeatureItem(
              "feature-2",
              "Sector news never shares your personal data with advertisers or publishers",
              40,
            ),
            _buildFeatureItem(
              "feature-1",
              "You can get Premium to unlock hundreds of publications",
              40,
            ),
            Spacer(),
            _buildStartButton(),
          ],
        ),
      ),
    );
  }
}
