import 'package:client/application/profile/profile_bloc.dart';
import 'package:client/presentation/application/widgets/form_label.dart';
import 'package:client/presentation/core/widgets/flash_message.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage();
  @override
  Widget build(BuildContext context) {
    // Get The bloc value from the provider
    final ProfileBloc _profileBloc = BlocProvider.of<ProfileBloc>(context);

    // Activate Editing if Edit
    _profileBloc.add(const ProfileEvent.editProfile());

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.isDeleted) {
            getWrappedFlashMessage(context, "Profile has been deleted");
          }
          // Handle Value Failures
          state.valueFailureOrSuccess.fold(
            () {},
            (either) {
              either.fold((failure) {
                failure.maybeMap(
                  // Full Name
                  // Already Handled by form validator
                  fullNameEmptyValue: (_) {
                    getWrappedFlashMessage(
                        context, "Please enter your Full Name");
                  },
                  fullNameInvalidFormat: (_) {
                    getWrappedFlashMessage(
                        context, "Please Enter your First and Last Name");
                  },
                  fullNameInvalidLength: (_) {
                    getWrappedFlashMessage(
                        context, "Please enter your Full Name");
                  },

                  // BirthDate
                  // Already Handled By picker
                  emptyBirthDate: (_) {},
                  birthDateInvalid: (_) {},

                  // Gender
                  // Already Handled by Default Value
                  emptyGender: (_) {
                    getWrappedFlashMessage(context, "Please Select a gender");
                  },
                  invalidGender: (_) {
                    getWrappedFlashMessage(
                        context, "Please Select a valid gender");
                  },

                  // Location
                  // Already Handled By Default Value
                  emptyLocation: (_) {
                    getWrappedFlashMessage(context, "Please enter a Location");
                  },
                  invalidLocation: (_) {
                    getWrappedFlashMessage(
                        context, "Please Select a valid Location");
                  },

                  // Phone Code
                  // Already Handled By Default Value
                  emptyPhoneCode: (_) {
                    getWrappedFlashMessage(
                        context, "Please select a Phone Code");
                  },
                  invalidPhoneCode: (_) {
                    getWrappedFlashMessage(
                        context, "Please select a valid Phone Code");
                  },

                  // Phone Number
                  // Already Handled By form validator
                  emptyPhoneNumber: (_) {
                    getWrappedFlashMessage(
                        context, "Please enter a Phone Number");
                  },
                  shortPhoneNumber: (_) {
                    getWrappedFlashMessage(
                        context, "Phone Numbers must be atleast 9 digits");
                  },
                  invalidPhoneNumber: (_) {
                    getWrappedFlashMessage(
                        context, "Please enter a valid Phone Number");
                  },
                  exceedingPhoneNumber: (_) {
                    getWrappedFlashMessage(
                        context, "Please select a valid Phone Number");
                  },

                  // Success Scenario
                  orElse: () {},
                );
              }, (_) => {});
            },
          );
          // Handle Profile Failures and Success
          state.applicationProfileFailureOrSuccess.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  failure.maybeMap(
                    emptyApplicationProfile: (_) {
                      getWrappedFlashMessage(
                          context, "Please Enter your profile information");
                    },
                    incompleteApplicationProfile: (_) {
                      getWrappedFlashMessage(
                          context, "Please complete your profile");
                    },
                    databaseError: (_) {
                      getWrappedFlashMessage(context,
                          "Seems like we have a database error. Please check app permissions");
                    },
                    orElse: () {},
                  );
                },
                (_) {
                  // Custom Function which returns a snackbar
                  getWrappedFlashMessage(
                      context, "Your Profile has been saved");
                },
              );
            },
          );
        },
        builder: (context, state) {
          final TextEditingController _fullNameController =
              TextEditingController();
          final TextEditingController _phoneNumberController =
              TextEditingController();

          _fullNameController.text = state.fullName.value.fold(
            (l) => "",
            (r) => r,
          );
          _phoneNumberController.text = state.phoneNumber.value.fold(
            (l) => "",
            (r) => r,
          );
          return Form(
            // Check Status of show error message to decide form validator state
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: ListView(
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

                InkWell(
                    onTap: () {
                      _profileBloc.add(const ProfileEvent.deleteProfile());
                    },
                    child: const Icon(Icons.delete)),

                // Full Name Input area
                const FormLabel(textValue: "Full Name"),
                TextFormField(
                  key: const ValueKey("fullNameInput"),
                  autofocus: true,
                  autocorrect: false,
                  // initialValue: state.fullName.value.fold((l) => "", (r) => r),
                  controller: _fullNameController,
                  decoration: const InputDecoration(
                    hintText: "Full Name",
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (fullNameValue) {
                    // If Not empty
                  },
                  validator: (_) => _profileBloc.state.fullName.value.fold(
                    (l) => l.maybeMap(
                      fullNameEmptyValue: (_) => "Fullname can't be empty",
                      fullNameInvalidFormat: (_) => "Enter First and Last Name",
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
                        key: const ValueKey("birthDayInput"),
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
                            key: const ValueKey("maleGenderInput"),
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
                      'Sudan',
                      'Tanzania',
                      'Uganda'
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
                          value: state.phoneCode.value.fold(
                            (l) => "+251",
                            (r) => r,
                          ),
                          onChanged: (phoneCodeValue) {
                            if (phoneCodeValue != null) {
                              _profileBloc.add(
                                ProfileEvent.phoneCodeChanged(phoneCodeValue),
                              );
                            }
                          },
                          items: <String>[
                            "+251",
                            "+254",
                            "+252",
                            "+291",
                            "+249",
                            "+255",
                            "+256"
                          ].map((String code) {
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
                        key: const ValueKey("phoneNumberInput"),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 52,
                        child: TextFormField(
                          controller: _phoneNumberController,
                          decoration:
                              const InputDecoration(hintText: "Phone Digits"),
                          onChanged: (phoneNumberValue) {},
                          validator: (_) =>
                              _profileBloc.state.phoneNumber.value.fold(
                            (l) => l.maybeMap(
                              emptyPhoneNumber: (_) =>
                                  "Please Enter a Phone Number",
                              shortPhoneNumber: (_) =>
                                  "Phone number must be 9 digits",
                              exceedingLength: (_) => "Phone number too long",
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
                  child: state.isSubmitting
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : MaterialButton(
                          key: const ValueKey("editSaveButton"),
                          color: Theme.of(context).primaryColor,
                          onPressed: () {
                            _profileBloc.add(
                              ProfileEvent.fullNameChanged(
                                  _fullNameController.text),
                            );
                            _profileBloc.add(
                              ProfileEvent.phoneNumberChanged(
                                  _phoneNumberController.text),
                            );

                            // Add Event
                            _profileBloc.add(const ProfileEvent.saveProfile());
                          },
                          child: const Text("Save Profile"),
                        ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

FlagsCode getFlagCode(String code) {
  if (code == "+251") {
    return FlagsCode.ET;
  } else if (code == "+254") {
    return FlagsCode.KE;
  } else if (code == "+291") {
    return FlagsCode.ER;
  } else if (code == "+249") {
    return FlagsCode.SS;
  } else if (code == "+252") {
    return FlagsCode.SO;
  } else if (code == "+255") {
    return FlagsCode.TZ;
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
  } else if (country == "Sudan") {
    return FlagsCode.SS;
  } else if (country == "Uganda") {
    return FlagsCode.UG;
  } else {
    return FlagsCode.TZ;
  }
}
