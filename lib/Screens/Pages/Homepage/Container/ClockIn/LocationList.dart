import 'package:flutter/material.dart';
import '../../../../../Controller/Homepage/GetLocation.dart';

class LocationList extends StatefulWidget{
  @override
  State<LocationList> createState() => _LocationListState();
}



class _LocationListState extends State<LocationList> {
  //location Available 
  final GetLocation location = GetLocation();
  late Future<List<dynamic>> items;
  String? selectedValue;
  String? _dropdownValue;

  @override
  void initState() {
    super.initState();
    // Fetch the data only once when the widget starts
    items = location.getLocation();
  }
  void dropdownCallback(String? selectedValue){
    if (selectedValue is String){
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: const[
        DropdownMenuItem(child: Text("dash"), value: "dash",),
        DropdownMenuItem(child: Text("dasha"), value: "dasha",),
        DropdownMenuItem(child: Text("dashs"), value: "dashs",),
        DropdownMenuItem(child: Text("dasdh"), value: "dasdh",),
      ],
      value: _dropdownValue,
      onChanged: dropdownCallback);
  }
}

