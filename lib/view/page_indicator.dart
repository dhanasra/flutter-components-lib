part of spidy;

class PageIndicator extends StatelessWidget {
  final int count;
  final int selectedPosition;
  final List<double> margin;
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

  PageIndicator({
    this.count,
    this.radius,
    this.margin,
    this.selectedPosition,
    this.height,
    this.dotColor,
    this.dotHeight,
    this.dotMargin,
    this.dotWidth,
    this.selectedDotColor,
    this.selectedDotHeight,
    this.selectedDotMargin,
    this.selectedDotWidth
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin!=null?Spidy.getEdge(margin):Spidy.getEdge([]),
        height: dotHeight??15,
        width: double.infinity,
        alignment: Alignment.center,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: count??5,
            itemBuilder: (BuildContext context, int index) {
              return BorderContainer(
                height: selectedPosition == index?selectedDotHeight??15:dotHeight??15,
                margin: selectedPosition == index?selectedDotMargin??[5,0]:dotMargin??[5,0],
                width: selectedPosition == index?selectedDotWidth??15:dotWidth??15,
                bgColor: selectedPosition == index?selectedDotColor??Colors.red:dotColor??Colors.grey,
                radius: radius??100,
              );
            }
        )
    );
  }
}

