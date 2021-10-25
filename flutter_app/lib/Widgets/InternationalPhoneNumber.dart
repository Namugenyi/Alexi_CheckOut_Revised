import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class InternationalPhoneNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: IntlPhoneField(
              keyboardType: TextInputType.number,
              //textAlignVertical: TextAlignVertical.center,
              autoValidate: false,
              textAlign: TextAlign.left,
              //maxLines: 1,
              decoration: const InputDecoration(
                // labelText: 'Phone Number',
                border: InputBorder.none,
                fillColor: Colors.green,
              ),
              initialCountryCode: 'UG',
              onChanged: (phone) {
                //when phone number country code is changed
                print(phone.completeNumber); //get complete number
                print(phone.countryCode); // get country code only
                print(phone.number); // only phone number
              },
            ),
          ),
        )
      ],
    );
  }
}
