part of spidy;

class AppBarTypes {
  static Widget appBarBack({
    List<double> iconMargin,
    List<double> titleMargin,
    String title,
    Color titleColor,
    double fontSize,
    FontWeight fontWeight,
    String fontFamily,
    List<Widget> children
  }) {
    return PreferredSize(
      preferredSize: Size(double.infinity,300),
      child: Container(
        color: Colors.white,
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: iconMargin!=null?Spidy.getEdge(iconMargin):Spidy.getEdge([15.0,0.0,0.0,0.0]),
                alignment: Alignment.center,
                child: Icon(Icons.arrow_back),
            ),
            Expanded(
              child: TextLabel(
                margin: titleMargin,
                label: title??"",
                mainAxisAlignment: MainAxisAlignment.start,
                textAlign: TextAlign.start,
                fontSize: fontSize??18,
                fontWeight: fontWeight??FontWeight.bold,
                fontFamily: fontFamily,
                color: titleColor??Colors.black,
              ),
            ),
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: children??[],
            )
          ],
        )
      )
    );
  }

  static Widget appBarEmpty() {
    return PreferredSize(
        preferredSize: Size(double.infinity,300),
        child: Container(
          color: Colors.white,
          height: 100,
        )
    );
  }
}
