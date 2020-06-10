import 'package:flutter/material.dart';

class AllEvents extends StatefulWidget {
  @override
  _AllEventsState createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Event Details "),
      ),
      body: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  icon: Icon(Icons.message),
                  labelText: "Your Event",
                  hintText: "Note down here about your event",
                  fillColor: Colors.greenAccent),
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("No recent Location "),
                    IconButton(
                      icon: Icon(Icons.location_on),
                      tooltip: 'Tap for Location',
                      color: Colors.red,
                      onPressed: () {},
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: <Widget>[
                    Text("No image uploaded"),
                    IconButton(
                      icon: Icon(Icons.photo),
                      tooltip: 'Tap for Upload Photo',
                      color: Colors.green,
                      onPressed: () {},
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: <Widget>[
                    Text(_dateTime == null
                        ? "Nothing has been picket yet "
                        : _dateTime.toString()),
                    IconButton(
                      icon: Icon(Icons.access_time),
                      tooltip: 'Tap for update Time',
                      color: Colors.cyan,
                      onPressed: () {
                        showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2030))
                            .then((date) {
                          setState(() {
                            _dateTime = date;
                          });
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: Text("Save"),
                ),
                Spacer(),
                RaisedButton(
                  onPressed: () {},
                  child: Text("Discard"),
                ),
                // FloatingActionButton(),
              ],
            ),
//          FloatingActionButton.extended(
//            isExtended: true,
//            onPressed: () {
//              Share.share("Support Me !");
//            },
//            backgroundColor: Colors.red,
//            label: Text("Share"),
//            icon: Icon(Icons.share),
//          )
          ],
        ),
      ),
    );
  }
}
