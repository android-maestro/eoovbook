import 'dart:convert';

import 'package:animate_do/animate_do.dart';
import 'package:country_code_picker/country_code_picker.dart';

import 'package:eoovbook/screen/demographicsscreenscreen.dart';
import 'package:eoovbook/screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class signuppage extends StatefulWidget {
  const signuppage({Key? key}) : super(key: key);

  @override
  _signuppageState createState() => _signuppageState();
}

enum Gender { male, female, other }

class _signuppageState extends State<StatefulWidget> {
  late List<String> checkboxGroupValues;
  late String radioButtonValue;
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController mobileController;
  late TextEditingController dobController;
  late TextEditingController passwordController;
  late bool passwordVisibility1;
  late TextEditingController cpasswordController;
  late bool passwordVisibility2;
  bool isChecked = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController controller = TextEditingController();

  Future signup() async {
    var APIURL =
        "https://eoovbook-api-dev.azurewebsites.net/RegisterEoovBookUser";
    Map mappeddate = {
      'Name': nameController,
      'DateOfBirth': dobController,
      'Email': emailController,
      'Mobile': mobileController,
      //'Gender': Gender,
      'Password': passwordController,
      'ConfirmPassword': cpasswordController,
      'IsAllowWhatsUp': isChecked
    };
    print("JSON DATA: ${mappeddate}");

    /*http.Response response = await http.post(APIURL, body: mappeddate);

    var data = jsonDecode(response.body);
    print("data : ${data}");*/
  }

  /*void signup(
      String nameController,
      dobController,
      emailController,
      mobileController,
      passwordController,
      cpasswordController,
      isChecked) async {
    try {
      Response response = await post(
          Uri.parse(
              'https://eoovbook-api-dev.azurewebsites.net/RegisterEoovBookUser'),
          body: {
            'Name': nameController,
            'DateOfBirth': dobController,
            'Email': emailController,
            'Mobile': mobileController,
            //'Gender': Gender,
            'Password': passwordController,
            'ConfirmPassword': cpasswordController,
            'IsAllowWhatsUp': isChecked
            //'Token' :
          });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data);
        print("Register Success with API");
      } else {
        print("Register Faild. Please enter proper details");
      }
    } catch (e) {
      print(e.toString());
    }
  }*/

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    emailController = TextEditingController();
    mobileController = TextEditingController();
    dobController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility1 = false;
    cpasswordController = TextEditingController();
    passwordVisibility2 = false;
  }

  @override
  Widget build(BuildContext context) {
    Gender? _gen = Gender.male;

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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(
                          'Signup',
                          textAlign: TextAlign.center,
                          style: TextStyle(),
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: TextFormField(
                          controller: nameController,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Name',
                            hintText: 'Your name...',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 7),
                        child: TextFormField(
                          controller: emailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Email Address',
                            hintText: 'Your email...',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      /*Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: TextFormField(
                          controller: mobileController,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Mobile Number',
                            hintText: 'Yourmobile number..',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.phone_android_outlined,
                              color: Colors.black,
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        
                      ),*/
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                                color: Colors.black.withOpacity(0.13)),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffeeeeee),
                                blurRadius: 10,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              InternationalPhoneNumberInput(
                                onInputChanged: (PhoneNumber number) {
                                  print(number.phoneNumber);
                                },
                                onInputValidated: (bool value) {
                                  print(value);
                                },
                                selectorConfig: SelectorConfig(
                                  selectorType:
                                      PhoneInputSelectorType.BOTTOM_SHEET,
                                ),
                                ignoreBlank: false,
                                autoValidateMode: AutovalidateMode.disabled,
                                selectorTextStyle:
                                    TextStyle(color: Colors.black),
                                textFieldController: controller,
                                formatInput: false,
                                maxLength: 10,
                                keyboardType: TextInputType.numberWithOptions(
                                    signed: true, decimal: true),
                                cursorColor: Colors.black,
                                inputDecoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(bottom: 15, left: 0),
                                  border: InputBorder.none,
                                  hintText: 'Phone Number',
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: 16),
                                ),
                                onSaved: (PhoneNumber number) {
                                  print('On Saved: $number');
                                },
                              ),
                              Positioned(
                                left: 90,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  height: 40,
                                  width: 1,
                                  color: Colors.black.withOpacity(0.13),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      /*CountryCodePicker(
                              padding: const EdgeInsets.all(8.0),
                              //this.padding = const EdgeInsets.all(8.0),
                              initialSelection: 'IN',
                              showCountryOnly: false,
                              showOnlyCountryWhenClosed: false,
                              favorite: ['+91', 'IN'],
                              enabled: true,
                              hideMainText: false,
                              showFlagMain: true,
                              showFlag: true,
                              hideSearch: false,
                              showFlagDialog: true,
                              alignLeft: true,*/
                      /*onInputChanged: (PhoneNumber number) {
                                print(number.phoneNumber);
                              },
                              onInputValidated: (bool value) {
                                print(value);
                              },
                              selectorConfig: SelectorConfig(
                                selectorType:
                                    PhoneInputSelectorType.BOTTOM_SHEET,
                              ),
                              ignoreBlank: false,
                              autoValidateMode: AutovalidateMode.disabled,
                              selectorTextStyle: TextStyle(color: Colors.black),
                              textFieldController: controller,
                              formatInput: false,
                              maxLength: 9,
                              keyboardType: TextInputType.numberWithOptions(
                                  signed: true, decimal: true),
                              cursorColor: Colors.black,
                              inputDecoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(bottom: 15, left: 0),
                                border: InputBorder.none,
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(
                                    color: Colors.grey.shade500, fontSize: 16),
                              ),
                              onSaved: (PhoneNumber number) {
                                print('On Saved: $number');
                              },
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      */
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: TextFormField(
                          controller: dobController,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Date of Birth',
                            hintText: 'YYYY-MM-DD',
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.date_range,
                            ),
                          ),
                          style: TextStyle(),
                          keyboardType: TextInputType.datetime,
                        ),
                      ),

                      Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gender",
                                  style: TextStyle(fontSize: 19),
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: ListTile(
                                          title: const Text('M'),
                                          leading: Radio<Gender>(
                                            fillColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => Colors.blue),
                                            value: Gender.male,
                                            groupValue: _gen,
                                            onChanged: (value) {
                                              setState(() {
                                                _gen = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: const Text('F'),
                                          leading: Radio<Gender>(
                                            fillColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => Colors.blue),
                                            value: Gender.female,
                                            groupValue: _gen,
                                            onChanged: (value) {
                                              setState(() {
                                                _gen = value;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: ListTile(
                                          title: const Text('O'),
                                          leading: Radio<Gender>(
                                            fillColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => Colors.blue),
                                            value: Gender.other,
                                            groupValue: _gen,
                                            onChanged: (value) {
                                              setState(() {
                                                _gen = value;
                                                /*
                                              Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              isChecked = !isChecked;
                              setState(() {});
                            },
                          ),
                                              */
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ])
                              ])),
                      /*Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                    child:
                     
                    FlutterFlowRadioButton(
                      options: ['MALE', 'FEMATE', 'OTHER'].toList(),
                      onChanged: (value) {
                        setState(() => radioButtonValue = value);
                      },
                      optionHeight: 30,
                      textStyle: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                      selectedTextStyle: TextStyle,
                      buttonPosition: radioPosition.left,
                      direction: Axis.horizontal,
                      radioButtonColor: Colors.blue,
                      inactiveRadioButtonColor: Color(0x8A000000),
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.end,
                      verticalAlignment: WrapCrossAlignment.start,
                    ),
                  ),*/
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 7),
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: !passwordVisibility1,
                          decoration: InputDecoration(
                            isDense: true,
                            labelText: 'Password',
                            hintText: 'Enter your password here...',
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0x9AFFFFFF),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.black,
                            ),
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () =>
                                    passwordVisibility1 = !passwordVisibility1,
                              ),
                              child: Icon(
                                passwordVisibility1
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Colors.black,
                                size: 22,
                              ),
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: cpasswordController,
                        obscureText: !passwordVisibility2,
                        decoration: InputDecoration(
                          isDense: true,
                          labelText: 'Confirm Password',
                          hintText: 'Enter your password here...',
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0x9AFFFFFF),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Colors.black,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility2 = !passwordVisibility2,
                            ),
                            child: Icon(
                              passwordVisibility2
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.black,
                              size: 22,
                            ),
                          ),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              isChecked = !isChecked;
                              setState(() {});
                            },
                          ),
                          Text(
                            "Agree with Terms and Conditions",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      /*FlutterFlowCheckboxGroup(
                    initiallySelected:
                        checkboxGroupValues != null ? checkboxGroupValues : [],
                    options: ['Agree with Terms and Conditions'].toList(),
                    onChanged: (val) =>
                        setState(() => checkboxGroupValues = val),
                    activeColor: Colors.primaries,
                    checkColor: Colors.white,
                    checkboxBorderColor: Color(0xFF95A1AC),
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),*/
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:
                              Color.fromARGB(255, 89, 10, 216), // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Demographics()),
                          );
                          //print('Button pressed ...');
                          /*signup(
                              /* nameController.text.toString(),
                              dobController.text.toString(),
                              emailController.text.toString(),
                              mobileController.text.toString(),
                              passwordController.text.toString(),
                              cpasswordController.text.toString(),
                              isChecked*/
                              );*/
                        },
                        child: const Text('Signup'),
                      ),

                      /*style: ButtonStyle(
                      width: double.infinity,
                      height: 50,
                      color: Color(0xDC691BD2),
                      textStyle:
                          TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                      borderRadius: 20,
                    ),*/
                      // ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Text(
                            '----------OR----------',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      /*Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: 
                    Text(
                      'Already on EOOVBOOK? Sign in',
                      
                      style: TextStyle(),
                    ),
                    
                  ),*/
                      Row(
                        children: <Widget>[
                          const Text('Already on EOOVBOOK?'),
                          TextButton(
                            child: const Text(
                              'LogIn',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => loginpage()),
                              );
                              //signup screen
                            },
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}
