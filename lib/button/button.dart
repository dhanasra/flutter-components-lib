part of spidy;

class Button extends StatelessWidget {

  final bool isElevated;
  final Color buttonColor;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final List<double> margin;
  final List<double> padding;
  final Color bgColor;
  final Color borderColor;
  final double radius;
  //text style
  final String text;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final List<double> textMargin;
  final TextAlign textAlignment;
  //icon style
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final List<double> iconMargin;
  final bool isIconEnd;


  Button({
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.isElevated = false,
    this.buttonColor = Colors.deepPurple,
    this.bgColor,
    this.borderColor,
    this.radius,
    this.onPressed,
    this.text,
    this.textColor = Colors.white,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.textAlignment,
    this.icon,
    this.iconSize,
    this.iconColor = Colors.white,
    this.iconMargin,
    this.textMargin,
    this.isIconEnd = false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width??300,
      height: height??50,
      color: bgColor??Colors.transparent,
      padding: padding!=null?Spidy.getEdge(padding):Spidy.getEdge([]),
      margin: margin!=null?Spidy.getEdge(margin):Spidy.getEdge([]),
      child: isElevated
          ? elevated()
          : notElevated()
    );

  }

  Widget elevated(){
    return ElevatedButton(
      onPressed: onPressed,
      child: buttonItem(),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius??8),
                  side: BorderSide(color: borderColor??bgColor??Colors.deepPurple)
              )
          )
      ),
    );
  }

  Widget notElevated(){
    return TextButton(
      onPressed: onPressed,
      child: buttonItem(),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius??8),
                  side: BorderSide(color: borderColor??bgColor??Colors.deepPurple)
              )
          )
      ),
    );
  }

  Widget buttonItem(){
    return Container(
      child: Directionality(
        textDirection: isIconEnd?TextDirection.rtl:TextDirection.ltr,
        child: Stack(
          children: [
            Container(
              margin: iconMargin!=null?Spidy.getEdge(iconMargin):Spidy.getEdge([]),
              width: iconSize??16,
              alignment: Alignment.center,
              child: Icon(icon,color: iconColor,size: iconSize??16,),
            ),
            TextLabel(
              width: double.infinity,
              mainAxisAlignment: MainAxisAlignment.center,
              textAlign: textAlignment??TextAlign.center,
              label: text,
              fontFamily: fontFamily,
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: textColor,
              margin: textMargin,
            )
          ],
        ),
      )
    );
  }

}
