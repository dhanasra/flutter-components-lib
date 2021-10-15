part of spidy;

class UserCard extends StatelessWidget {
  //card container style
  final Color bgColor;
  final Color borderColor;
  final double width;
  final double height;
  final double radius;
  final List<double> padding;
  final List<double> margin;
  final Constraints constraints;
  final BoxDecoration decoration;
  final Border border;
  //image style
  final Color imageBgColor;
  final Color imageBorderColor;
  final double imageRadius;
  final String imageUrl;
  final double imageWidth;
  final double imageHeight;
  final String imageAsset;
  final bool imageIsShadow;
  final List<double> imagePadding;
  final List<double> imageMargin;
  //username style
  final String userName;
  final Color userNameColor;
  final Color userNameBgColor;
  final double userNameFontSize;
  final FontWeight userNameFontWeight;
  final String userNameFontFamily;
  final List<double> userNamePadding;
  final List<double> userNameMargin;
  final MainAxisAlignment userNameMainAxisAlignment;
  //subname style
  final String subName;
  final Color subNameColor;
  final Color subNameBgColor;
  final double subNameFontSize;
  final FontWeight subNameFontWeight;
  final String subNameFontFamily;
  final List<double> subNamePadding;
  final List<double> subNameMargin;
  final MainAxisAlignment subNameMainAxisAlignment;
  //icon style
  final IconData endIcon;
  final Color endIconColor;
  final double endIconSize;
  final List<double> endIconPadding;
  final List<double> endIconMargin;
  final MainAxisAlignment endIconAlignment;
  //operation
  final bool isClickable;
  final bool isEndIconClickable;
  final VoidCallback onCardPressed;
  final VoidCallback onEndIconPressed;
  final Widget child;


  UserCard({
    this.bgColor,
    this.borderColor,
    this.radius,
    this.width,
    this.height,
    this.margin = const [],
    this.padding = const [10],
    this.constraints,
    this.decoration,
    this.border,
    this.imageUrl,
    this.imagePadding,
    this.child,
    this.imageMargin,
    this.imageRadius,
    this.imageHeight,
    this.imageWidth,
    this.imageAsset,
    this.imageBgColor,
    this.imageBorderColor,
    this.imageIsShadow,
    this.userName = "User Name",
    this.userNameFontSize,
    this.userNameFontWeight,
    this.userNameFontFamily,
    this.userNameMainAxisAlignment = MainAxisAlignment.start,
    this.userNameMargin,
    this.userNamePadding,
    this.userNameBgColor,
    this.userNameColor,
    this.subNameMargin,
    this.subNamePadding,
    this.subNameColor,
    this.subNameFontFamily,
    this.subNameFontWeight,
    this.subNameFontSize,
    this.subName = "mobile number",
    this.subNameBgColor,
    this.endIconSize,
    this.endIcon,
    this.endIconColor,
    this.endIconPadding,
    this.endIconMargin,
    this.subNameMainAxisAlignment = MainAxisAlignment.start,
    this.isClickable = false,
    this.isEndIconClickable = false,
    this.onCardPressed,
    this.onEndIconPressed,
    this.endIconAlignment = MainAxisAlignment.center
  });

  @override
  Widget build(BuildContext context) {
    return isClickable
        ? BorderContainer(
            isShadow: true,
            margin: margin,
            padding: padding,
            width: width,
            child: Material(
                color: bgColor?? Colors.white,
                child: InkWell(
                  onTap: onCardPressed,
                  child: userCard(),
                ))
        )
        : BorderContainer(
            margin: margin,
            padding: padding,
        width: width,
            child: ClipPath(
                  child: Card(
                        elevation:8,
                        child:userCard()
                  ),
              clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius??3))
              ),
            )
    );
  }

  Widget userCard(){
    return  BorderContainer(
            width: width,
            height: height??80,
            radius: radius,
            padding: padding,
            decoration: decoration,
            border: border,
            borderColor: borderColor,
            child: Row(
              children: [
                imageUrl!=null || imageAsset!=null?
                ImageContainer(
                  width: imageWidth??60,
                  height: imageHeight??60,
                  padding: imagePadding,
                  margin: imageMargin,
                  radius: imageRadius,
                  borderColor: imageBorderColor,
                  bgColor: imageBgColor,
                  asset: imageAsset,
                  isShadow: imageIsShadow,
                  url: imageUrl,
                ):Container(),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextLabel(
                        label: userName,
                        fontSize: userNameFontSize,
                        fontWeight: userNameFontWeight,
                        fontFamily: userNameFontFamily,
                        color: userNameColor,
                        textAlign: TextAlign.start,
                        bgColor: userNameBgColor,
                        padding: userNamePadding,
                        margin: userNameMargin,
                        mainAxisAlignment: userNameMainAxisAlignment,
                      ),
                      TextLabel(
                        label: subName,
                        fontSize: subNameFontSize??12,
                        fontWeight: subNameFontWeight,
                        textAlign: TextAlign.start,
                        fontFamily: subNameFontFamily,
                        color: subNameColor??Colors.grey,
                        padding: subNamePadding,
                        margin: subNameMargin,
                        mainAxisAlignment: subNameMainAxisAlignment,
                      )
                    ],
                  ),
                ),
                Container(
                  height: height??80,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: endIconAlignment,
                    children: [
                      child??Container(),
                      isEndIconClickable
                          ? Material(
                        child: InkWell(
                          onTap: onEndIconPressed,
                          child: BorderContainer(
                            height: 50,
                            width: 50,
                            radius: 25,
                            child: icon(),
                            padding: endIconPadding,
                            margin: endIconMargin,
                          ),
                        ),
                      ) : icon(),
                    ],
                  ),
                )
              ],
            ),

    );
  }

  Widget icon(){
    return  Icon(endIcon,size: endIconSize,color: endIconColor,);
  }
}
