part of spidy;

class SingleSelect extends StatefulWidget {
  final String hint;
  final Color hintColor;
  final IconData hintIcon;
  final String hintImage;
  final String hintAsset;
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
  //single select
  final List<String> items;
  final List<IconData> icons;
  final List<String> imageUrls;
  final List<String> assets;
  final String value;
  final ValueChanged<String> onChanged;
  final Color dropdownIconEnabledColor;
  final Color dropdownIconDisabledColor;
  final double dropdownIconSize;
  final IconData dropdownIcon;
  final List<double> dropdownIconPadding;
  final int elevation;
  final double itemHeight;

  SingleSelect({
    this.hint,
    this.hintIcon,
    this.hintImage,
    this.hintAsset,
    this.hintColor,
    @required this.items,
    @required this.value,
    @required this.onChanged,
    this.icons = const [],
    this.imageUrls = const [],
    this.assets = const [],
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
    this.labelBgColor,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.textHeight,
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
    this.imagePadding = const [],
    this.dropdownIcon,
    this.dropdownIconPadding = const [],
    this.dropdownIconDisabledColor,
    this.dropdownIconEnabledColor,
    this.dropdownIconSize,
    this.elevation,
    this.itemHeight
  });

  @override
  _SingleSelectState createState() => _SingleSelectState();
}

class _SingleSelectState extends State<SingleSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: dropdownButton()
    );
  }

  Widget dropdownButton(){
    return DropdownButton<String>(
      value: widget.value,
      underline: Container(),
      icon: Container(
        margin: Spidy.getEdge(widget.dropdownIconPadding),
        child: Icon(widget.dropdownIcon??Icons.arrow_drop_down_outlined),
      ),
      iconDisabledColor: widget.dropdownIconDisabledColor,
      iconEnabledColor: widget.dropdownIconEnabledColor,
      iconSize: widget.dropdownIconSize??20,
      itemHeight: widget.itemHeight,
      elevation: widget.elevation??8,
      isExpanded: false,
      items: widget.items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: TextLabel(
              label:value,
              icon:widget.icons.length==0?widget.icon:widget.icons[widget.items.indexOf(value)],
              width:widget.width,
              height:widget.height,
              bgColor:widget.bgColor,
              isVertical:widget.isVertical,
              mainAxisAlignment:widget.mainAxisAlignment,
              crossAxisAlignment:widget.crossAxisAlignment,
              padding:widget.padding,
              margin:widget.margin,
              color:widget.color,
              labelBgColor:widget.labelBgColor,
              fontWeight:widget.fontWeight,
              fontSize:widget.fontSize,
              fontFamily:widget.fontFamily,
              textHeight:widget.textHeight,
              letterSpacing:widget.letterSpacing,
              overflow:widget.overflow,
              decoration:widget.decoration,
              decorationColor:widget.decorationColor,
              decorationThickness:widget.decorationThickness,
              decorationStyle:widget.decorationStyle,
              textPadding:widget.textPadding,
              textMargin:widget.textMargin,
              iconColor:widget.iconColor,
              iconBgColor:widget.iconBgColor,
              iconSize:widget.iconSize,
              iconPadding:widget.iconPadding,
              iconMargin:widget.iconMargin,
              imageWidth:widget.imageWidth,
              iconAsImage:widget.iconAsImage,
              imageHeight:widget.imageHeight,
              imageUrl:widget.imageUrls.length==0?widget.imageUrl:widget.imageUrls[widget.items.indexOf(value)],
              asset:widget.assets.length==0?widget.asset:widget.assets[widget.items.indexOf(value)],
              imageRadius:widget.imageRadius,
              imageMargin:widget.imageMargin,
              imagePadding:widget.imagePadding
          ),
        );
      }).toList(),
      onChanged: widget.onChanged,
      hint: TextLabel(
          label:widget.hint,
          icon:widget.hintIcon,
          width:widget.width,
          height:widget.height,
          bgColor:widget.bgColor,
          isVertical:widget.isVertical,
          mainAxisAlignment:widget.mainAxisAlignment,
          crossAxisAlignment:widget.crossAxisAlignment,
          padding:widget.padding,
          margin:widget.margin,
          color:widget.hintColor,
          labelBgColor:widget.labelBgColor,
          fontWeight:widget.fontWeight,
          fontSize:widget.fontSize,
          fontFamily:widget.fontFamily,
          textHeight:widget.textHeight,
          letterSpacing:widget.letterSpacing,
          overflow:widget.overflow,
          decoration:widget.decoration,
          decorationColor:widget.decorationColor,
          decorationThickness:widget.decorationThickness,
          decorationStyle:widget.decorationStyle,
          textPadding:widget.textPadding,
          textMargin:widget.textMargin,
          iconColor:widget.iconColor,
          iconBgColor:widget.iconBgColor,
          iconSize:widget.iconSize,
          iconPadding:widget.iconPadding,
          iconMargin:widget.iconMargin,
          imageWidth:widget.imageWidth,
          iconAsImage:widget.iconAsImage,
          imageHeight:widget.imageHeight,
          imageUrl:widget.hintImage,
          asset:widget.hintAsset,
          imageRadius:widget.imageRadius,
          imageMargin:widget.imageMargin,
          imagePadding:widget.imagePadding
      ),
      style:
      TextStyle(color: Colors.black, decorationColor: Colors.red),
    );
  }
}
