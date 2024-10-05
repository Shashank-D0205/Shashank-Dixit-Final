import 'package:flutter/material.dart';
import 'package:shashank_dixit/Animated_widgets/ScrollDownBtn.dart';
import 'package:shashank_dixit/Screens/ProjectsPage/ProjectsPage.dart';
import 'package:shashank_dixit/Screens/screen_utils.dart';
import 'package:shashank_dixit/Animated_widgets/animated_bubble_button.dart';
import 'package:shashank_dixit/Animated_widgets/animated_positioned_text.dart';
import 'package:shashank_dixit/Animated_widgets/animated_slide_transition.dart';
import 'package:shashank_dixit/Animated_widgets/animated_text_slide_box_transition.dart';
import 'package:shashank_dixit/Screens/socials.dart';
import 'package:shashank_dixit/values/values.dart';
import 'package:shashank_dixit/Animated_widgets/animated_positioned_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../Animated_widgets/animated_line_through_text.dart';
import '../functions.dart';



const kDuration = Duration(milliseconds: 600);

class PortofolioHP_header extends StatefulWidget {
  const PortofolioHP_header({
    Key?key,
    required this.ProjectsKey,
    required this.controller,
    }) : super(key: key);
  final GlobalKey ProjectsKey;
  final AnimationController controller;


  @override
  State<PortofolioHP_header> createState() => _PortofolioHP_headerState();
}

class _PortofolioHP_headerState extends State<PortofolioHP_header>
    with TickerProviderStateMixin{
  late AnimationController controller;
  late AnimationController rotationController;
  late AnimationController scrollDownButtonController;
  late Animation<Offset> animation;
  late Animation<Offset> scrollDownBtnAnimation;
  @override
  void initState(){
    scrollDownButtonController=AnimationController(vsync: this, duration: Duration(milliseconds: 300),);
    rotationController=AnimationController(vsync: this,duration: Duration(seconds: 20)).. repeat();
    controller=AnimationController(vsync: this,duration: Duration(milliseconds: 1500))..repeat();
    animation= Tween<Offset>(
      begin: Offset(0, 0.05),
      end: Offset(0, -0.05),
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut),);
    controller.addStatusListener((status){
      if(status == AnimationStatus.completed){
        controller.reverse();
      }
      else if(status == AnimationStatus.dismissed){
        controller.forward();
      }
    });
    rotationController.addStatusListener((status){
      if(status== AnimationStatus.completed){
        rotationController.reset();
        rotationController.forward();
      }
    });
    controller.forward();
    rotationController.forward();
    super.initState();
  }
  @override
  void dispose(){
    controller.dispose();
    scrollDownButtonController.dispose();
    rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    final double screenWidth = widthOfScreen(context);
    final double screenHeight = heightOfScreen(context);
    final EdgeInsets textMargin = EdgeInsets.only(
      left: responsiveSize(
        context,
        20,
        screenWidth * 0.15,
        sm: screenWidth * 0.15,
      ),
      top: responsiveSize(
        context,
        60,
        screenHeight * 0.35,
        sm: screenHeight * 0.35,
      ),
      bottom: responsiveSize(context, 20, 40),
    );
    final EdgeInsets padding = EdgeInsets.symmetric(
      horizontal: screenWidth * 0.1,
      vertical: screenHeight * 0.1,
    );
    final EdgeInsets imageMargin = EdgeInsets.only(
      right: responsiveSize(
        context,
        20,
        screenWidth * 0.05,
        sm: screenWidth * 0.05,
      ),
      top: responsiveSize(
        context,
        30,
        screenHeight * 0.25,
        sm: screenHeight * 0.25,
      ),
      bottom: responsiveSize(context, 20, 40),
    );
    return Container(
      width: screenWidth,
      color: AppColors.accentColor2.withOpacity(0.35),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: assignHeight(context, 0.1),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: BackgroundCircle(),
            ),
          ),
          ResponsiveBuilder(builder: (context, sizingInformation){
            double screenWidth = sizingInformation.screenSize.width;
            if(screenWidth<RefinedBreakpoints().tabletNormal){
              return Column(
                children: [
                  Container(
                    padding: padding,
                    child: AnimatedSlideTranstion(
                        controller: controller,
                        position: animation,
                      child: Stack(
                        children: [
                          // RotationTransition(
                          //   turns: rotationController,
                          //   child: Image.asset(
                          //     ImagePath.STATUE,
                          //     width: screenWidth,
                          //   ),
                          // )
                          SizedBox(
                            width: screenWidth,height: screenHeight*0.4,
                            child: Image.asset(
                              ImagePath.STATUE,
                              width: screenWidth,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: padding.copyWith(top: 0),
                    child: Container(
                      width: screenWidth,
                      child: DevInfo(
                          controller: widget.controller,
                          width: screenWidth),
                    ),
                  )
                ],
              );

            }
            else{
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: textMargin,
                    child: Container(
                      width: screenWidth*0.4,
                      child: DevInfo(
                          controller: widget.controller,
                          width: screenWidth*0.40),
                    ),
                  ),
                  SizedBox(width: screenWidth*0.05,),
                  Container(
                    margin: imageMargin,
                    child: AnimatedSlideTranstion(
                      controller: controller,
                      position: animation,
                      child: Stack(
                        children: [
                          // RotationTransition(
                          //   turns: rotationController,
                          //   child: Image.asset(
                          //     ImagePath.STATUE,
                          //     width: screenWidth * 0.35,
                          //   ),
                          // ),
                          SizedBox(
                            width: screenWidth*0.35,
                            height: screenHeight*0.4,
                            child: Image.asset(
                              ImagePath.STATUE,
                              width: screenWidth,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
          }),
          Positioned(
              right: 0,
              bottom: 0,
              child: ResponsiveBuilder(builder: (context, sizingInformation){
                double screenWidth = sizingInformation.screenSize.width;
                if(screenWidth<RefinedBreakpoints().tabletNormal){
                  return Container();
                }
                else{
                  return InkWell(
                    hoverColor: Colors.transparent,
                    onTap: (){
                      Scrollable.ensureVisible(
                        widget.ProjectsKey.currentContext!,
                        duration: kDuration,
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 24,bottom:40),
                      child: MouseRegion(
                        onEnter: (e)=> scrollDownButtonController.forward(),
                        onExit: (e)=> scrollDownButtonController.reverse(),
                        child: AnimatedSlideTranstion(
                            controller: scrollDownButtonController,
                            child: ScrollDownButton()
                        ),
                      ),
                    ),
                  );
                }
                },
              )
          ),
        ],
      ),
    );
  }

}


class BackgroundCircle extends StatelessWidget {
  const BackgroundCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widthOfCircle = responsiveSize(
      context,
      widthOfScreen(context) / 2.5,
      widthOfScreen(context) / 3.5,
    );
    return Container(
      width: widthOfCircle,
      height: widthOfCircle,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(widthOfCircle / 2),
        ),
      ),
    );
  }
}

class DevInfo extends StatefulWidget {
  const DevInfo({
    Key? key,
    required this.controller,
    required this.width

  }) : super(key: key);

  final AnimationController controller;
  final double width;


  @override
  _DevInfoState createState() => _DevInfoState();
}

class _DevInfoState extends State<DevInfo> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    EdgeInsetsGeometry margin = const EdgeInsets.only(left: 16);
    final CurvedAnimation curvedAnimation = CurvedAnimation(
      parent: widget.controller,
      curve: Interval(0.6, 1.0, curve: Curves.fastOutSlowIn),
    );

    double headerFontSize = responsiveSize(context, 28, 48, md: 36, sm: 32);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container(
        //   child: AnimatedTextSlideBoxTransition(
        //       controller: widget.controller,
        //       text: StringConst.HI,
        //       width: widget.width,
        //       maxLines: 3,
        //       textStyle: textTheme.displayMedium?.copyWith(
        //         color: AppColors.black,
        //         fontSize:headerFontSize,
        //       )
        //   ),
        // ),
        // SizedBox(height: 12),
        Container(
          margin : margin,
          child: AnimatedTextSlideBoxTransition(
            controller: widget.controller,
            text: StringConst.DEV_TITLE,
            width: widget.width,
            maxLines: 3,
            textStyle: textTheme.displayMedium?.copyWith(
              color: AppColors.black,
              fontSize: headerFontSize,
            ),
          ),
        ),
        SizedBox(height: 12),
        Container(
          margin: margin,
          child: AnimatedTextSlideBoxTransition(
            controller: widget.controller,
            text: StringConst.DEV_DESC,
            width: responsiveSize(
              context,
              widget.width * 0.75,
              widget.width,
              md: widget.width,
              sm: widget.width,
            ),
            maxLines: 3,
            textStyle: textTheme.displayMedium?.copyWith(
              color: AppColors.black,
              fontSize: headerFontSize,
            ),
          ),
        ),
        SizedBox(height: 30,),
        Container(
          margin: margin,
          child: AnimatedPositionedText(
            controller: curvedAnimation,
            width: widget.width,
            maxLines: 3,
            factor: 2,
            text: StringConst.DEV_INTRO,
            textStyle: textTheme.bodyLarge?.copyWith(
              fontSize: responsiveSize(
                context,
                Sizes.TEXT_SIZE_16,
                Sizes.TEXT_SIZE_18,
              ),
              height: 2,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        // SizedBox(height: 10,),
        AnimatedPositionedWidget(
          height: 60,
          controller: curvedAnimation,
          width: 200,
          child: AnimatedBubbleButton(
            color : AppColors.grey100,
            title: StringConst.MY_PROJECTS.toUpperCase(),
            onTap: (){
              Navigator.pushNamed(context, ProjectsPage.projectsPageroute);
            },
            titleStyle: textTheme.bodyLarge?.copyWith(
              color:AppColors.black,
              fontSize: responsiveSize(
                context,
                Sizes.TEXT_SIZE_14,
                Sizes.TEXT_SIZE_16,
                sm: Sizes.TEXT_SIZE_15,
              ),
              fontWeight: FontWeight.w500,
            ),
            startBorderRadius: BorderRadius.all(Radius.circular(100)),
            imageColor: AppColors.black,
            startOffset: Offset(0, 0),
            targetOffset: Offset(0.1, 0),
            targetWidth: 200,
            endBorderRadius: BorderRadius.circular(20),
          ),
        ),
        SizedBox(height: 40,),
        Container(
          margin: margin,
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            children: _buildSocials(
              context: context,
              data: Data.socialData1,
            ),
          ),
        )

      ],

    );


  }
  List<Widget> _buildSocials({
    required BuildContext context,
    required List<SocialData> data,
  }) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyLarge?.copyWith(color: AppColors.grey750);
    TextStyle? slashStyle = textTheme.bodyLarge?.copyWith(
      color: AppColors.grey750,
      fontWeight: FontWeight.w400,
      fontSize: 18,
    );
    List<Widget> items = [];

    for (int index = 0; index < data.length; index++) {
      items.add(
        AnimatedLineThroughText(
          text: data[index].name,
          isUnderlinedByDefault: true,
          controller: widget.controller,
          hasSlideBoxAnimation: true,
          hasOffsetAnimation: true,
          isUnderlinedOnHover: false,
          onTap: () {
            Functions.launchUrl(data[index].url);
          },
          textStyle: style,
        ),
      );

      if (index < data.length - 1) {
        items.add(
          Text('/', style: slashStyle),
        );
      }
    }

    return items;
  }
}

