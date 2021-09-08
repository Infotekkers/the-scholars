import 'package:client/application/profile/profile_bloc.dart';
import 'package:client/presentation/application/widgets/form_label.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class ProfilePage extends StatelessWidget {
  final bool showMessage;
  const ProfilePage({required this.showMessage});
  @override
  Widget build(BuildContext context) {
    // Get The bloc value from the provider
    final ProfileBloc _profileBloc = BlocProvider.of<ProfileBloc>(context);
    return Form(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {},
          builder: (context, state) {
            print("@ profile builder ${state.isSubmitting}");
            return ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                // Top Label
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 18, 0, 10),
                  child: const Center(
                    child: Text(
                      "Your Profile",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

                // Full Name Input area
                const FormLabel(textValue: "Full Name"),
                TextFormField(
                  initialValue: state.fullName.value.fold((l) => "", (r) => r),
                  decoration: const InputDecoration(
                    hintText: "Full Name",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (fullNameValue) {
                    // If Not empty
                    if (fullNameValue != " ") {
                      // Launch Name changed event
                      _profileBloc.add(
                        ProfileEvent.fullNameChanged(fullNameValue),
                      );
                    }
                  },
                  validator: (_) => _profileBloc.state.fullName.value.fold(
                    (l) => l.maybeMap(
                      fullNameEmptyValue: (_) => "Fullname can't be empty",
                      fullNameInvalidFormat: (_) =>
                          "Fullname must have First and Last",
                      fullNameInvalidLength: (_) =>
                          "Fullname can't contain initials",
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
                ),

                // Birthday Area
                const FormLabel(textValue: "BirthDate"),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(Icons.cake),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: () async {
                          final DateTime? picked = await showDatePicker(
                            context: context,
                            initialDate: state.birthDate,
                            firstDate: DateTime(DateTime.now().year - 25),
                            lastDate: DateTime(DateTime.now().year - 15),
                          );
                          if (picked != null) {
                            // Invoke Event
                            _profileBloc
                                .add(ProfileEvent.birthDateChanged(picked));
                          }
                        },
                        child: Text(
                          DateFormat.yMd().format(state.birthDate),
                          style:
                              const TextStyle(fontSize: 16, letterSpacing: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),

                // Gender Area
                const FormLabel(textValue: "Gender"),
                // ignore: sized_box_for_whitespace
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: (MediaQuery.of(context).size.width - 16) * 0.5,
                        child: ListTile(
                          title: const Text("Male"),
                          leading: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Theme.of(context).primaryColor),
                            value: 'male',
                            onChanged: (genderValue) => {
                              _profileBloc.add(
                                ProfileEvent.genderChanged(
                                  genderValue.toString(),
                                ),
                              )
                            },
                            groupValue:
                                state.gender.value.fold((l) => "", (r) => r),
                          ),
                        ),
                      ),

                      // Gender Input Area
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: (MediaQuery.of(context).size.width - 16) * 0.5,
                        child: ListTile(
                          title: const Text("Female"),
                          leading: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Theme.of(context).primaryColor),
                            value: 'female',
                            onChanged: (genderValue) => {
                              _profileBloc.add(
                                ProfileEvent.genderChanged(
                                  genderValue.toString(),
                                ),
                              )
                            },
                            groupValue:
                                state.gender.value.fold((l) => "", (r) => r),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Location Selection Area
                const FormLabel(textValue: "Location"),
                // ignore: sized_box_for_whitespace
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 60,
                  child: DropdownButton<String>(
                    value:
                        state.location.value.fold((l) => "Ethiopia", (r) => r),
                    isExpanded: true,
                    onChanged: (locationValue) {
                      if (locationValue != null) {
                        _profileBloc
                            .add(ProfileEvent.locationChanged(locationValue));
                      }
                    },
                    items: <String>[
                      'Ethiopia',
                      'Kenya',
                      'Somalia',
                      'Eritrea',
                      'South Sudan',
                      'North Sudan'
                    ].map((String code) {
                      return DropdownMenuItem<String>(
                          value: code,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.65,
                            height: 40,
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              leading: Flag.fromCode(
                                countryFlag(code),
                                height: 30,
                                width: 42,
                                fit: BoxFit.fill,
                              ),
                              title: Padding(
                                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                                child: Text(
                                  code,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ));
                    }).toList(),
                  ),
                ),

                // Phone Number Area
                const FormLabel(textValue: "Phone Number"),
                // ignore: sized_box_for_whitespace
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: Row(
                    children: [
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: 60,
                        child: DropdownButton<String>(
                          value: "+251",
                          onChanged: (phoneCodeValue) {
                            if (phoneCodeValue != null) {
                              _profileBloc.add(ProfileEvent.phoneCodeChanged(
                                  phoneCodeValue));
                            }
                          },
                          items: <String>["+251", "+254", "+261"]
                              .map((String code) {
                            return DropdownMenuItem<String>(
                                value: code,
                                // ignore: sized_box_for_whitespace
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.36,
                                  height: 35,
                                  child: ListTile(
                                    leading: Flag.fromCode(
                                      getFlagCode(code),
                                      height: 25,
                                      width: 36,
                                      fit: BoxFit.fill,
                                    ),
                                    trailing: Text(code),
                                  ),
                                ));
                          }).toList(),
                        ),
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 52,
                        child: TextFormField(
                          decoration:
                              const InputDecoration(hintText: "Phone Digits"),
                          onChanged: (phoneNumberValue) {
                            if (phoneNumberValue.isNotEmpty) {
                              _profileBloc.add(
                                ProfileEvent.phoneNumberChanged(
                                    phoneNumberValue),
                              );
                            }
                          },
                          validator: (_) =>
                              _profileBloc.state.phoneNumber.value.fold(
                            (l) => l.maybeMap(
                              emptyPhoneNumber: (_) =>
                                  "Please Enter a Phone Number",
                              shortPhoneNumber: (_) =>
                                  "Phone number must be 7 digits",
                              invalidPhoneNumber: (_) => "Invalid Phone Number",
                              orElse: () => null,
                            ),
                            (r) => null,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Edit Button
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  child: MaterialButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: const Text("Save Profile"),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

FlagsCode getFlagCode(String code) {
  if (code == "+251") {
    return FlagsCode.ET;
  } else if (code == "+254") {
    return FlagsCode.KE;
  } else {
    return FlagsCode.UG;
  }
}

FlagsCode countryFlag(String country) {
  if (country == "Ethiopia") {
    return FlagsCode.ET;
  } else if (country == "Kenya") {
    return FlagsCode.KE;
  } else if (country == "Somalia") {
    return FlagsCode.SO;
  } else if (country == "Eritrea") {
    return FlagsCode.ER;
  } else if (country == "South Sudan") {
    return FlagsCode.SS;
  } else {
    return FlagsCode.SD;
  }
}
