part of spidy;

class SearchTextInput extends StatefulWidget {
  final bool autoFocus;
  final bool isEnabled;
  final bool isExpands;
  final bool isFilled;
  final bool isClassic;
  final bool noBorder;
  final TextInputType inputType;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isObscured;
  //overall division
  final double width;
  final double height;
  final List<double> margin;
  final List<double> padding;
  //content
  final String labelText;
  final String prefixText;
  final String suffixText;
  final String hintText;
  final String helperText;
  final String counterText;
  final Widget prefix;
  final Widget suffix;
  final Widget counter;
  final Color color;
  final Color hintColor;
  final Color labelColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  //content style
  final List<double> contentPadding;
  //icon Style
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final IconData prefixIcon;
  final double prefixIconSize;
  final Color prefixIconColor;
  final IconData suffixIcon;
  final double suffixIconSize;
  final Color suffixIconColor;
  //border style
  final Color enabledBorderColor;
  final Color focusedBorderColor;
  final double enabledBorderWidth;
  final double focusedBorderWidth;
  final double radius;
  //alignment
  final TextAlignVertical textAlignVertical;
  final TextAlign textAlign;
  //list
  final List<dynamic> searchList;
  //container
  final Color listContainerBgColor;
  final Color listContainerBorderColor;
  final double listContainerWidth;
  final double listContainerHeight;
  final double listContainerRadius;
  final bool listContainerIsShadow;
  final List<double> listContainerPadding;
  final List<double> listContainerMargin;
  //item container
  final Color listItemContainerBgColor;
  final Color listItemContainerBorderColor;
  final double listItemContainerWidth;
  final double listItemContainerHeight;
  final double listItemContainerRadius;
  final bool listItemContainerIsShadow;
  final List<double> listItemContainerPadding;
  final List<double> listItemContainerMargin;
  //item
  final IconData itemIcon;
  //overall division
  final double itemWidth;
  final double itemHeight;
  final Color itemBgColor;
  final List<double> itemPadding;
  final List<double> itemMargin;
  final MainAxisAlignment itemMainAxisAlignment;
  final CrossAxisAlignment itemCrossAxisAlignment;
  final bool itemIsVertical;
  //label style
  final Color itemColor;
  final Color itemLabelBgColor;
  final double itemFontSize;
  final FontWeight itemFontWeight;
  final String itemFontFamily;
  final double itemTextHeight;
  final double itemLetterSpacing;
  final TextOverflow itemOverflow;
  final TextDecoration itemDecoration;
  final Color itemDecorationColor;
  final double itemDecorationThickness;
  final TextDecorationStyle itemDecorationStyle;
  final List<double> itemTextPadding;
  final List<double> itemTextMargin;
  //icon style
  final Color itemIconColor;
  final Color itemIconBgColor;
  final double itemIconSize;
  final List<double> itemIconPadding;
  final List<double> itemIconMargin;
  //image style
  final bool itemIconAsImage;
  final double itemImageWidth;
  final double itemImageHeight;
  final double itemImageRadius;
  final String itemImageUrl;
  final String itemAsset;
  final List<double> itemImagePadding;
  final List<double> itemImageMargin;

  SearchTextInput({
    this.autoFocus = false,
    this.isEnabled = true,
    this.isExpands = false,
    this.inputType,
    this.controller,
    this.focusNode,
    this.isObscured = false,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.isFilled = true,
    this.isClassic = false,
    this.noBorder = false,
    this.labelText,
    this.prefixText,
    this.suffixText,
    this.hintText,
    this.helperText,
    this.counterText,
    this.prefix,
    this.suffix,
    this.counter,
    this.contentPadding = const [10,15],
    this.color,
    this.hintColor,
    this.labelColor,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconColor,
    this.suffixIconColor,
    this.prefixIconSize,
    this.suffixIconSize,
    this.enabledBorderColor,
    this.enabledBorderWidth=1,
    this.focusedBorderColor,
    this.focusedBorderWidth=1,
    this.radius,
    this.textAlignVertical,
    this.textAlign,
    this.searchList = const [],
    this.listContainerBgColor,
    this.listContainerBorderColor,
    this.listContainerRadius,
    this.listContainerWidth,
    this.listContainerHeight,
    this.listContainerIsShadow,
    this.listContainerMargin = const [],
    this.listContainerPadding = const [],
    this.listItemContainerBgColor,
    this.listItemContainerBorderColor,
    this.listItemContainerRadius,
    this.listItemContainerWidth,
    this.listItemContainerHeight,
    this.listItemContainerIsShadow,
    this.listItemContainerMargin = const [],
    this.listItemContainerPadding = const [],
    this.itemIcon,
    this.itemWidth,
    this.itemHeight,
    this.itemBgColor,
    this.itemIsVertical = false,
    this.itemMainAxisAlignment = MainAxisAlignment.center,
    this.itemCrossAxisAlignment = CrossAxisAlignment.center,
    this.itemPadding =  const [],
    this.itemMargin =  const [],
    this.itemColor,
    this.itemLabelBgColor,
    this.itemFontWeight,
    this.itemFontSize,
    this.itemFontFamily,
    this.itemTextHeight,
    this.itemLetterSpacing,
    this.itemOverflow,
    this.itemDecoration,
    this.itemDecorationColor,
    this.itemDecorationThickness,
    this.itemDecorationStyle,
    this.itemTextPadding =  const [],
    this.itemTextMargin =  const [],
    this.itemIconColor,
    this.itemIconBgColor,
    this.itemIconSize,
    this.itemIconPadding =  const [],
    this.itemIconMargin =  const [],
    this.itemImageWidth,
    this.itemIconAsImage = false,
    this.itemImageHeight,
    this.itemImageUrl,
    this.itemAsset,
    this.itemImageRadius,
    this.itemImageMargin =  const [],
    this.itemImagePadding = const []
  });

  @override
  _SearchTextInputState createState() => _SearchTextInputState();
}

class _SearchTextInputState extends State<SearchTextInput> {

  List<dynamic> _searchResult = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width??double.infinity,
      height: widget.height,
      padding: widget.padding!=null?Spidy.getEdge(widget.padding):Spidy.getEdge([]),
      margin: widget.margin!=null?Spidy.getEdge(widget.margin):Spidy.getEdge([]),
      child: Wrap(
        children: [
          TextInput(
            autoFocus : widget.autoFocus,
            isEnabled : widget.isEnabled,
            isExpands : widget.isExpands,
            inputType : widget.inputType,
            controller : widget.controller,
            focusNode : widget.focusNode,
            isObscured : widget.isObscured,
            width : widget.width,
            height : widget.height,
            margin : widget.margin,
            padding : widget.padding,
            isFilled : widget.isFilled,
            isClassic : widget.isClassic,
            noBorder : widget.noBorder,
            labelText : widget.labelText,
            prefixText : widget.prefixText,
            suffixText : widget.suffixText,
            hintText : widget.hintText,
            helperText : widget.helperText,
            counterText : widget.counterText,
            prefix : widget.suffix,
            suffix : widget.suffix,
            counter : widget.counter,
            contentPadding : widget.contentPadding,
            color : widget.color,
            hintColor : widget.hintColor,
            labelColor : widget.labelColor,
            fontFamily : widget.fontFamily,
            fontSize : widget.fontSize,
            fontWeight : widget.fontWeight,
            icon : widget.icon,
            iconSize : widget.iconSize,
            iconColor : widget.iconColor,
            prefixIcon : widget.prefixIcon,
            suffixIcon : widget.suffixIcon,
            prefixIconColor : widget.prefixIconColor,
            suffixIconColor : widget.suffixIconColor,
            prefixIconSize : widget.prefixIconSize,
            suffixIconSize : widget.suffixIconSize,
            enabledBorderColor : widget.enabledBorderColor,
            enabledBorderWidth : widget.enabledBorderWidth,
            focusedBorderColor : widget.focusedBorderColor,
            focusedBorderWidth : widget.focusedBorderWidth,
            radius : widget.radius,
            textAlignVertical : widget.textAlignVertical,
            textAlign : widget.textAlign,
            onChanged : onSearchTextChanged
          ),
          BorderContainer(
            bgColor : widget.listContainerBgColor,
            borderColor : widget.listContainerBorderColor ,
            radius : widget.listContainerRadius,
            width : widget.listContainerWidth,
            height : widget.listContainerHeight,
            isShadow : widget.listContainerIsShadow,
            margin : widget.listContainerMargin,
            padding : widget.listContainerPadding,
            constraints: BoxConstraints(
                minHeight: 0, minWidth: double.infinity, maxHeight: 300),
            child:
            ListView.builder(
              shrinkWrap: true,
                itemCount: _searchResult.length,
                itemBuilder: (BuildContext context,index){
                  return BorderContainer(
                      bgColor : widget.listItemContainerBgColor,
                      borderColor : widget.listItemContainerBorderColor ,
                      radius : widget.listItemContainerRadius,
                      width : widget.listItemContainerWidth,
                      height : widget.listItemContainerHeight,
                      isShadow : widget.listItemContainerIsShadow,
                      margin : widget.listItemContainerMargin,
                      padding : widget.listItemContainerPadding,
                      child:
                      TextLabel(
                        label: _searchResult[index],
                        icon: widget.itemIcon,
                        width: widget.itemWidth,
                        height: widget.itemHeight,
                        bgColor: widget.itemBgColor,
                        isVertical: widget.itemIsVertical,
                        mainAxisAlignment: widget.itemMainAxisAlignment,
                        crossAxisAlignment: widget.itemCrossAxisAlignment,
                        padding: widget.itemPadding,
                        margin: widget.itemMargin,
                        color: widget.itemColor,
                        labelBgColor: widget.itemLabelBgColor,
                        fontWeight: widget.itemFontWeight,
                        fontSize: widget.itemFontSize,
                        fontFamily: widget.itemFontFamily,
                        textHeight: widget.itemTextHeight,
                        letterSpacing: widget.itemLetterSpacing,
                        overflow: widget.itemOverflow,
                        decoration: widget.itemDecoration,
                        decorationColor: widget.itemDecorationColor,
                        decorationThickness: widget.itemDecorationThickness,
                        decorationStyle: widget.itemDecorationStyle,
                        textPadding: widget.itemTextPadding,
                        textMargin: widget.itemTextMargin,
                        iconColor: widget.itemIconColor,
                        iconBgColor: widget.itemIconBgColor,
                        iconSize: widget.itemIconSize,
                        iconPadding: widget.itemIconPadding,
                        iconMargin: widget.itemIconMargin,
                        imageWidth: widget.itemImageWidth,
                        iconAsImage: widget.itemIconAsImage,
                        imageHeight: widget.itemImageHeight,
                        imageUrl: widget.itemImageUrl,
                        asset: widget.itemAsset,
                        imageRadius: widget.itemImageRadius,
                        imageMargin: widget.itemImageMargin,
                        imagePadding: widget.itemImagePadding
                      ),
                    );
                }),
          )
        ],
      )
    );
  }

  onSearchTextChanged(String text) async {
    print(text);
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }
    widget.searchList.forEach((item) {
      if (item.contains(text) || item.contains(text))
        _searchResult.add(item);
    });
    setState(() {});
  }
}