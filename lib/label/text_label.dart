part of spidy;

class TextLabel extends StatelessWidget {

  final String label;
  final IconData icon;
  //overall division
  final double width;
  final double height;
  final Color bgColor;
  final List<double> padding;
  final List<double> margin;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final bool isVertical;
  final bool isReverse;
  //label style
  final Color color;
  final Color labelBgColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final double textHeight;
  final double letterSpacing;
  final TextOverflow overflow;
  final TextDecoration decoration;
  final Color decorationColor;
  final double decorationThickness;
  final TextDecorationStyle decorationStyle;
  final List<double> textPadding;
  final List<double> textMargin;
  final TextAlign textAlign;
  //icon style
  final Color iconColor;
  final Color iconBgColor;
  final double iconSize;
  final List<double> iconPadding;
  final List<double> iconMargin;
  //image style
  final bool iconAsImage;
  final double imageWidth;
  final double imageHeight;
  final double imageRadius;
  final String imageUrl;
  final String asset;
  final List<double> imagePadding;
  final List<double> imageMargin;


  TextLabel({
    @required this.label,
    this.icon,
    this.width,
    this.height,
    this.bgColor,
    this.isVertical = false,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding =  const [],
    this.margin =  const [],
    this.color,
    this.isReverse = false,
    this.labelBgColor,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.textHeight,
    this.textAlign,
    this.letterSpacing,
    this.overflow,
    this.decoration,
    this.decorationColor,
    this.decorationThickness,
    this.decorationStyle,
    this.textPadding =  const [],
    this.textMargin =  const [],
    this.iconColor,
    this.iconBgColor,
    this.iconSize,
    this.iconPadding =  const [],
    this.iconMargin =  const [],
    this.imageWidth,
    this.iconAsImage = false,
    this.imageHeight,
    this.imageUrl,
    this.asset,
    this.imageRadius,
    this.imageMargin =  const [],
    this.imagePadding = const []
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isReverse?TextDirection.rtl:TextDirection.ltr,
      child: Container(
          width: width??double.infinity,
          height: height,
          color: bgColor??Colors.transparent,
          padding: padding!=null?Spidy.getEdge(padding):Spidy.getEdge([]),
          margin: margin!=null?Spidy.getEdge(margin):Spidy.getEdge([]),
          child: isVertical
              ?Column(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: children(),
          )
              :Row(
            mainAxisAlignment: mainAxisAlignment,
            crossAxisAlignment: crossAxisAlignment,
            children: children(),
          )
      ),
    );
  }

  List<Widget> children(){
    return [
      icon!=null
        ? Container(
          color: iconBgColor??Colors.transparent,
          padding: iconPadding!=null?Spidy.getEdge(iconPadding):Spidy.getEdge([]),
          margin: iconMargin!=null?Spidy.getEdge(iconMargin):Spidy.getEdge([]),
          child: Icon(
            icon,
            color: iconColor??Colors.black,
            size: iconSize,
          ),
        )
        : Container(),
      iconAsImage
          ?Container(
          width: imageWidth??20,
          height: imageHeight??20,
          margin: imageMargin!=null?Spidy.getEdge(imageMargin):Spidy.getEdge([]),
          padding: imagePadding!=null?Spidy.getEdge(imagePadding):Spidy.getEdge([]),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(imageRadius??4),
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  bgColor??Colors.white, BlendMode.dstATop),
              image: imageUrl != null ? NetworkImage(imageUrl) : AssetImage('assets/images/'+asset),
              fit: BoxFit.cover,
            ),
          )
      )
          :Container(),
      Expanded(
        child: Container(
          color: labelBgColor??Colors.transparent,
          padding: textPadding!=null?Spidy.getEdge(textPadding):Spidy.getEdge([]),
          margin: textMargin!=null?Spidy.getEdge(textMargin):Spidy.getEdge([]),
          child: Text(
            label,
            overflow: overflow??null,
            maxLines: 3,
            textAlign: textAlign??TextAlign.center,
            style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: fontWeight,
                color: color??Colors.black,
                letterSpacing: letterSpacing,
                height: textHeight,
                decoration: decoration,
                decorationColor: decorationColor,
                decorationThickness: decorationThickness,
                decorationStyle: decorationStyle
            ),
          ),
        ),
      )
    ];
  }
}
