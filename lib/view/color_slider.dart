part of spidy;

const List<Color> _defaultColors = [
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,
  Colors.lightBlue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.lightGreen,
  Colors.lime,
  Colors.yellow,
  Colors.amber,
  Colors.orange,
  Colors.deepOrange,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
  Colors.black,
];

class ColorSlider extends StatefulWidget {

  final ValueChanged<Color> onColorChanged;
  final List<Color> availableColors;

  ColorSlider({
    this.onColorChanged,
    this.availableColors = _defaultColors,
  });

  @override
  _ColorSliderState createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider> {

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BorderContainer(
        margin: [0,10],
        width: double.infinity,
        height: 70,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.availableColors.length,
            itemBuilder: (BuildContext context,index){
              return InkWell(
                onTap: (){
                  widget.onColorChanged(widget.availableColors[index]);
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: BorderContainer(
                    height: 50,
                    width: 50,
                    radius: 50,
                    margin: [5,9],
                    bgColor: widget.availableColors[index],
                    child: selectedIndex == index
                        ?Center(
                      child: Icon(Icons.check,size: 18,color: Colors.black,),
                    )
                        :Container()
                ),
              );
            })
    );
  }
}