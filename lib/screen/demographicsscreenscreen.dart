import 'package:eoovbook/screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';

class Demographics extends StatefulWidget {
  const Demographics({Key? key}) : super(key: key);

  @override
  _DemographicsState createState() => _DemographicsState();
}

class _DemographicsState extends State<Demographics> {
  late List<String> checkboxGroupValues1;
  late List<String> checkboxGroupValues2;
  late List<String> checkboxGroupValues3;
  late List<String> checkboxGroupValues4;
  late List<String> checkboxGroupValues5;
  late List<String> checkboxGroupValues6;
  late String dropDownValue1;
  late String dropDownValue2;
  late String dropDownValue3;
  late String countryValue;
  late String stateValue;
  late String cityValue;
  bool isChecked = false;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: Text(
                              'EOOVBOOK',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.7, 0),
                              child: TextButton(
                                child: const Text(
                                  'Skip',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(fontSize: 15),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => loginpage()),
                                  );
                                  //signup screen
                                },
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 5, 5),
                                child: Text(
                                  'Demographics',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 5, 0),
                                  child: Text(
                                    'What are Your Interest ?',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(1, 0, 1, 0),
                              child: Wrap(
                                spacing: 0,
                                runSpacing: 0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            isChecked = !isChecked;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Music",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Expanded(
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            isChecked = !isChecked;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Politics",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            isChecked = !isChecked;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Sports",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Expanded(
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            isChecked = !isChecked;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Health",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            isChecked = !isChecked;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Travelling",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      Expanded(
                                        child: Checkbox(
                                          value: isChecked,
                                          onChanged: (value) {
                                            isChecked = !isChecked;
                                            setState(() {});
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Technology",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 10),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Column(
                                          children: [
                                            SelectState(
                                              onCountryChanged: (value) {
                                                setState(() {
                                                  countryValue = value;
                                                });
                                              },
                                              onStateChanged: (value) {
                                                setState(() {
                                                  stateValue = value;
                                                });
                                              },
                                              onCityChanged: (value) {
                                                setState(() {
                                                  cityValue = value;
                                                });
                                              },
                                            ),
                                            // InkWell(
                                            //   onTap:(){
                                            //     print('country selected is $countryValue');
                                            //     print('country selected is $stateValue');
                                            //     print('country selected is $cityValue');
                                            //   },
                                            //   child: Text(' Check')
                                            // )
                                          ],
                                        )),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        primary: Color.fromARGB(
                                            255, 89, 10, 216), // background
                                        onPrimary: Colors.white, // foreground
                                      ),
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      child: const Text('Continue'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
