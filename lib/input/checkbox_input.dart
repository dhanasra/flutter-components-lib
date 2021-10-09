part of spidy;

class CheckboxInput extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final Color borderColor;
  final double width;
  final double height;
  final double radius;
  final bool isShadow;
  final List<double> padding;
  final List<double> margin;
  final Constraints constraints;
  //checkbox style
  final String checkboxText;
  final bool isReverse;
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  final Color selectedTileColor;
  final Color tileColor;
  final Color checkColor;
  final Color activeColor;
  final List<double> contentPadding;
  //icon style
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  //text style
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;

  CheckboxInput({
    this.child,
    this.bgColor,
    this.borderColor,
    this.radius,
    this.width,
    this.height,
    this.isShadow,
    this.margin = const [],
    this.padding = const [],
    this.constraints,
    this.checkboxText,
    this.isReverse = false,
    this.isChecked,
    this.onChanged,
    this.selectedTileColor,
    this.tileColor,
    this.activeColor,
    this.checkColor,
    this.iconColor,
    this.iconSize,
    this.icon,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.contentPadding
  });

  @override
  Widget build(BuildContext context) {
    return BorderContainer(
      bgColor: this.bgColor,
      borderColor: this.borderColor,
      radius: this.radius,
      height: this.height,
      isShadow: this.isShadow,
      margin: this.margin,
      padding: this.padding,
      constraints: this.constraints,
      child: Directionality(
        textDirection: isReverse?TextDirection.rtl:TextDirection.ltr,
        child: CheckboxListTile(
          title: Text(checkboxText??"", style:TextStyle(
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            color: color,
            fontSize: fontSize
          )),
          value: isChecked,
          checkColor: checkColor??Colors.deepPurple,
          tileColor: tileColor??Colors.transparent,
          activeColor: activeColor??Colors.white,
          selectedTileColor: selectedTileColor??Colors.transparent,
          contentPadding: contentPadding!=null?Spidy.getEdge(contentPadding):Spidy.getEdge([10]),
          onChanged: onChanged,
          secondary: icon!=null?Icon(icon,size: iconSize??16,color: iconColor??Colors.black,):null,
        ),
      )
    );
  }
}
