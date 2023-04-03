import 'package:flutter/material.dart';

import 'nrc_data.dart';

class NrcWidget extends StatefulWidget {
  const NrcWidget({super.key});
  @override
  State<NrcWidget> createState() => _NrcWidgetState();
}

class _NrcWidgetState extends State<NrcWidget> {
  String? selectedNrcPrefix;
  String? selectedRegion;
  String? selectedNrcPostfix;
  String? regionHolder;
  String? nrcNo;
  String? passportNo;
  // ignore: unused_field
  bool _autoValidate = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Widget _clickNext(String name) {
  //   return Container(
  //     padding: EdgeInsets.all(26.0),
  //     height: MediaQuery.of(context).size.height * 0.14,
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: <Widget>[
  //         ElevatedButton(
  //           style: ElevatedButton.styleFrom(
  //               backgroundColor: Theme.of(context).colorScheme.primary,
  //               shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(4.0),
  //               )),
  //           child: Padding(
  //             padding: const EdgeInsets.symmetric(vertical: 12.0),
  //             child: Text(
  //               name,
  //               style: TextStyle(color: Colors.white),
  //             ),
  //           ),
  //           onPressed: () {
  //             _saveForm(context);
  //           },
  //         )
  //       ],
  //     ),
  //   );
  // }

  Widget _userNrcPrefix() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          width: 0.5,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedNrcPrefix,
          onChanged: (String? newValue) {
            setState(() {
              selectedRegion = null;
              selectedNrcPrefix = newValue;
            });
          },
          items:
              NrcData.nrcPrefix.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _userNrcRegion() {
    switch (selectedNrcPrefix) {
      case '1/':
        return _nrcRegionDrop(NrcData.regionOne);
        break;
      case '2/':
        return _nrcRegionDrop(NrcData.regionTwo);
      case '3/':
        return _nrcRegionDrop(NrcData.regionThree);
        break;
      case '4/':
        return _nrcRegionDrop(NrcData.regionFour);
        break;
      case '5/':
        return _nrcRegionDrop(NrcData.regionFive);
        break;
      case '6/':
        return _nrcRegionDrop(NrcData.regionSix);
        break;
      case '7/':
        return _nrcRegionDrop(NrcData.regionSeven);
        break;
      case '8/':
        return _nrcRegionDrop(NrcData.regionEight);
        break;
      case '9/':
        return _nrcRegionDrop(NrcData.regionNine);
        break;
      case '10/':
        return _nrcRegionDrop(NrcData.regionTen);
        break;
      case '11/':
        return _nrcRegionDrop(NrcData.regionEleven);
        break;
      case '12/':
        return _nrcRegionDrop(NrcData.regionTwelve);
        break;
      case '13/':
        return _nrcRegionDrop(NrcData.regionThirdteen);
        break;
      case '14/':
        return _nrcRegionDrop(NrcData.regionFourteen);
        break;

      default:
        return _nrcRegionDrop(NrcData.regionOne);
        break;
    }
  }

  Widget _nrcRegionDrop(List<String> listData) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.28,
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          width: 0.5,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          value: selectedRegion,
          onChanged: (String? newValue) {
            setState(() {
              selectedRegion = newValue;
              print(selectedRegion);
            });
          },
          items: listData.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _userNrcPostfix() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          width: 0.5,
        ),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedNrcPostfix,
          onChanged: (String? newValue) {
            setState(() {
              selectedNrcPostfix = newValue;
            });
          },
          items:
              NrcData.nrcPostfix.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  // void _saveForm(BuildContext context) {
  //   // if (_formKey.currentState?.validate() ??
  //   //     true &&
  //   //         selectedNrcPrefix != null &&
  //   //         selectedRegion != null &&
  //   //         selectedNrcPostfix != null) {
  //   //   _formKey.currentState?.save();
  //   //   print(widget.phone);

  //   //   Navigator.push(
  //   //       context,
  //   //       MaterialPageRoute(
  //   //           builder: (context) => NameRegistrationScreen(
  //   //               widget.phone,
  //   //               selectedNrcPrefix,
  //   //               selectedRegion,
  //   //               selectedNrcPostfix,
  //   //               nrcNo,
  //   //               passportNo)));
  //   // } else {
  //   //   setState(
  //   //     () {
  //   //       _autoValidate = true;
  //   //     },
  //   //   );
  //   // }
  // }

  Widget _flexTextForm(String name) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.23,
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          labelText: name,
          errorStyle: TextStyle(fontSize: 12),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(4.0),
            ),
            borderSide: new BorderSide(
              color: Colors.black,
              width: 0.5,
            ),
          ),
        ),
        keyboardType: TextInputType.number,
        validator: (values) {
          if (values?.isEmpty ?? true) {
            return 'Invalid NRC No.';
          }
          if (values?.isEmpty ?? true) {
            return 'Invalid NRC No.';
          } else if (values?.length != 6) {
            return 'Invalid NRC No.';
          }

          return null;
        },
        onSaved: (values) {
          nrcNo = values;
        },
      ),
    );
  }

  // final _nrcText = Row(
  //   // mainAxisAlignment: MainAxisAlignment.,
  //   children: <Widget>[
  //     Text('NRC', style: TextStyle(fontSize: 18, color: Colors.black)),
  //   ],
  // );

  // final _passportText = Row(
  //   // mainAxisAlignment: MainAxisAlignment.,
  //   children: <Widget>[
  //     Text('Passport No.', style: TextStyle(fontSize: 18, color: Colors.black)),
  //   ],
  // );

  // Widget _passportTextForm() {
  //   return Padding(
  //     padding: const EdgeInsets.all(4.0),
  //     child: TextFormField(
  //       style: TextStyle(color: Colors.black),
  //       decoration: InputDecoration(
  //         labelText: 'Passport No.',
  //         border: new OutlineInputBorder(
  //           borderRadius: const BorderRadius.all(
  //             const Radius.circular(4.0),
  //           ),
  //           borderSide: new BorderSide(
  //             color: Colors.black,
  //             width: 0.5,
  //           ),
  //         ),
  //       ),
  //       textInputAction: TextInputAction.next,
  //       keyboardType: TextInputType.number,
  //       validator: (values) {
  //         if (values?.isEmpty ?? true) {
  //           return null;
  //         } else if (values?.length == null ||
  //             (values?.length ?? 0) < 7 && (values?.length ?? 0) > 10) {
  //           return 'Invalid Number';
  //         }

  //         return null;
  //       },
  //       onSaved: (values) {
  //         if (values?.isEmpty ?? true) {
  //           passportNo = '';
  //         }
  //         passportNo = values;
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _userNrcPrefix(),
          _userNrcRegion(),
          _userNrcPostfix(),
          _flexTextForm('No.'),
        ],
      ),
    );
  }
}
