part of spidy;

class CarouselContainer extends StatefulWidget {
  final List<CarouselItem> items;
  final PageController controller;
  final double containerHeight;
  final Color bgColor;
  final double imageHeight;
  final double imageWidth;
  final List<double> padding;
  //title style
  final Color titleColor;
  final double titleFontSize;
  final FontWeight titleFontWeight;
  final String titleFontFamily;
  final List<double> titleMargin;
  //desc style
  final Color descColor;
  final double descFontSize;
  final FontWeight descFontWeight;
  final String descFontFamily;
  final List<double> descMargin;
  //dot style
  final int dotWidth;
  final int dotHeight;
  final int dotMargin;
  final Color dotColor;
  final double radius;
  final int selectedDotWidth;
  final int selectedDotHeight;
  final int selectedDotMargin;
  final Color selectedDotColor;
  final double height;
  final List<double> indicatorMargin;
  final bool indicatorIsVisible;

  CarouselContainer({
    this.items,
    this.controller,
    this.bgColor,
    this.padding,
    this.containerHeight = 500,
    this.imageHeight = 400,
    this.imageWidth = 400,
    this.titleColor = Colors.black,
    this.titleFontSize = 20,
    this.titleFontWeight = FontWeight.bold,
    this.titleFontFamily,
    this.titleMargin,
    this.descColor = Colors.grey,
    this.descFontFamily,
    this.descFontSize = 16,
    this.descFontWeight = FontWeight.normal,
    this.descMargin,
    this.dotColor,
    this.selectedDotColor,
    this.dotMargin,
    this.selectedDotMargin,
    this.selectedDotWidth,
    this.dotWidth,
    this.selectedDotHeight,
    this.dotHeight,
    this.radius,
    this.height,
    this.indicatorMargin,
    this.indicatorIsVisible = true
  });


  @override
  _CarouselContainerState createState() => _CarouselContainerState();
}

class _CarouselContainerState extends State<CarouselContainer> {

  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.bgColor,
      padding: widget.padding!=null?Spidy.getEdge(widget.padding):Spidy.getEdge([]),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: carouselSlider(),
            height: widget.containerHeight,
          ),
          widget.indicatorIsVisible
              ? PageIndicator(
                  margin: widget.indicatorMargin??[0],
                  count: widget.items.length,
                  selectedPosition: position,
                  height: widget.height,
                  dotColor: widget.dotColor,
                  dotHeight: widget.dotHeight,
                  dotWidth: widget.dotWidth,
                  dotMargin: widget.dotMargin,
                  selectedDotColor: widget.selectedDotColor,
                  selectedDotHeight: widget.selectedDotHeight,
                  selectedDotMargin: widget.selectedDotMargin,
                  selectedDotWidth: widget.selectedDotWidth,
                  radius: widget.radius,
                )
              : Container()
        ],
      ),
    );
  }

  Widget carouselSlider(){
    return PageView.builder(
      itemCount: widget.items.length,
      scrollDirection: Axis.horizontal,
      pageSnapping: true,
      controller: widget.controller,
      physics: BouncingScrollPhysics(),
      onPageChanged: (pos){
        setState(() {
          position = pos;
        });
      },
      itemBuilder: (BuildContext context, position) {
        return Container(
          child: item(
            titleUp: widget.items[position].titleUp,
            titleDown: widget.items[position].titleDown,
            desc: widget.items[position].desc,
            url: widget.items[position].imageUrl,
            asset: widget.items[position].asset
          ),
          height: widget.containerHeight,
        );
      },
    );
  }

  Widget item({String titleUp,String titleDown,String desc,String url,String asset}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Visibility(
            visible: titleUp!=null,
            child: TextLabel(
              margin: widget.titleMargin,
              label: titleUp,
              color: widget.titleColor,
              fontWeight: widget.titleFontWeight,
              fontSize: widget.titleFontSize,
              fontFamily: widget.titleFontFamily,
            ),
        ),
        ImageContainer(
          width: widget.imageWidth,
          height: widget.imageHeight,
          radius: 0,
          asset: asset,
          url: url,
        ),
        Visibility(
          visible: titleDown!=null,
          child: TextLabel(
            margin: widget.titleMargin,
            label: titleDown,
            color: widget.titleColor,
            fontWeight: widget.titleFontWeight,
            fontSize: widget.titleFontSize,
            fontFamily: widget.titleFontFamily,
            overflow: TextOverflow.clip,
          ),
        ),
        Visibility(
          visible: desc!=null,
          child: TextLabel(
            margin: widget.descMargin,
            label: desc,
            color: widget.descColor,
            textAlign: TextAlign.center,
            fontWeight: widget.descFontWeight,
            fontSize: widget.descFontSize,
            fontFamily: widget.descFontFamily,
          ),
        ),
      ],
    );
  }
}

class CarouselItem{
  final String asset;
  final String imageUrl;
  final String titleUp;
  final String titleDown;
  final String desc;

  CarouselItem({this.asset,this.imageUrl,this.titleUp,this.titleDown,this.desc});

}
