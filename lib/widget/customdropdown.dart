import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:provider/provider.dart';
import 'package:water_trends_app/Providers/langugeProvider.dart';
import 'package:water_trends_app/Providers/theme_provider.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  GlobalKey actionKey = LabeledGlobalKey("");
  bool isDropdownOpened = false;
  OverlayEntry floatingDropdown;

  double _width, _height, _xPosition, _yPosition;

  void findDropDownData() {
    RenderBox renderBox = actionKey.currentContext.findRenderObject();
    _height = renderBox.size.height;
    _width = renderBox.size.width;
    Offset offset = renderBox.localToGlobal(Offset.zero);
    _xPosition = offset.dx;
    _yPosition = offset.dy;
    print(_height);
    print(_width);
    print(_xPosition);
    print(_yPosition);
  }

  OverlayEntry _creatFloatingDropdown() {
    return OverlayEntry(builder: (context) {
      return Positioned(
          left: _xPosition * 0.6,
          width: _width * 4.5,
          top: _height,
          height: _height * 10,
          child: Dropdown(
            itemHeight: _height,
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          if (isDropdownOpened) {
            floatingDropdown.remove();
          } else {
            findDropDownData();

            floatingDropdown = _creatFloatingDropdown();
            Overlay.of(context).insert(floatingDropdown);
          }

          isDropdownOpened = !isDropdownOpened;
        });
      },
      key: actionKey,
      child: Container(
        margin: EdgeInsets.all(10),
        child: Image(
          color: Colors.white,
          image: Svg(
            "assets/icons/text-font.svg",
            size: Size(30, 30),
          ),
        ),
      ),
    );
  }
}

class Dropdown extends StatefulWidget {
  final double itemHeight;

  Dropdown({this.itemHeight});

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment(-0.2, 0),
          child: ClipPath(
            clipper: ArrowClipper(),
            child: Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.white60,
              ),
            ),
          ),
        ),
        Material(
          elevation: 20,
          child: Container(
            height: 2.5 * widget.itemHeight,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white60,
            ),
            child: DropdownItem(),
          ),
        ),
      ],
    );
  }
}

class DropdownItem extends StatefulWidget {
  @override
  _DropdownItemState createState() => _DropdownItemState();
}

class _DropdownItemState extends State<DropdownItem> {
  @override
  Widget build(BuildContext context) {
    var lan = Provider.of<LanguageProvider>(context, listen: true);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(top: 5, right: 5),
          child: Text(
            lan.getTexts("font-size"),
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "a",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Slider(value: 0.3, onChanged: (val) {}),
              Text(
                "A",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Switch(
                value: Provider.of<ThemeProvider>(context, listen: true)
                    .isSelected,
                onChanged: (value) {
                  Provider.of<ThemeProvider>(context, listen: false)
                        .themeModeChange(value);
                  
                        
                },
              ),
              Text(
                lan.getTexts("dark-mode"),
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height);
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
