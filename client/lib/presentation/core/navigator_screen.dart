// Main File For displaying navigation bar
// Will be supplied with a NAVIGATIONBLOC to maintain state

import 'package:client/application/application/application_bloc.dart';
import 'package:client/application/navigation/navigation_bloc.dart';
import 'package:client/application/profile/profile_bloc.dart';
import 'package:client/application/util/util_bloc.dart';
import 'package:client/application/credentials/credentials_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/application/thrid_page.dart';
import 'package:client/presentation/profile/edit_profile.dart';
import 'package:client/presentation/view_applications/home_page.dart';
import 'package:client/presentation/profile/profile_page.dart';
import 'package:client/presentation/credentials/credential_page.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigatorPage extends StatelessWidget {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    bool isProfileComplete = false;
    final NavigationBloc _navigationBloc =
        BlocProvider.of<NavigationBloc>(context);
    final UtilBloc _utilBloc = BlocProvider.of<UtilBloc>(context);
    _utilBloc.add(
      const UtilEvent.checkProfileCompletion(),
    );

    return BlocConsumer<UtilBloc, UtilState>(
      listener: (context, state) {},
      builder: (context, state) {
        isProfileComplete = state.isProfileComplete;
        return BlocConsumer<NavigationBloc, NavigationState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            // Function to get page
            Widget? getPage() {
              if (state.pageIndexNumber == 0) {
                return BlocProvider.value(
                  value: getIt<ApplicationBloc>(),
                  child: const HomePage(),
                );
              } else if (state.pageIndexNumber == 1) {
                return BlocProvider.value(
                  value: getIt<ProfileBloc>(),
                  child: const EditProfilePage(),
                );
              } else if (state.pageIndexNumber == 2) {
                return const ThirdApplicationPage();
              } else {
                return BlocProvider.value(
                  value: getIt<CredentialsBloc>(),
                  child: const CredentialPage(),
                );
              }
            }

            return Scaffold(
              bottomNavigationBar: CurvedNavigationBar(
                height: 50,
                backgroundColor: Theme.of(context).primaryColor,
                color: Theme.of(context).accentColor,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 400),
                key: _bottomNavigationKey,
                letIndexChange: (index) => true,
                // ignore: prefer_const_literals_to_create_immutables
                items: <Widget>[
                  IconTheme(
                    data: Theme.of(context).accentIconTheme,
                    child: const Icon(Icons.school_sharp),
                  ),
                  IconTheme(
                    data: Theme.of(context).accentIconTheme,
                    child: const Icon(Icons.person),
                  ),
                  IconTheme(
                    data: Theme.of(context).accentIconTheme,
                    child: const Icon(Icons.announcement),
                  ),
                  IconTheme(
                    data: Theme.of(context).accentIconTheme,
                    child: const Icon(Icons.settings),
                  ),
                ],
                onTap: (index) {
                  // Check if taped on self
                  if (state.pageIndexNumber != index) {
                    _navigationBloc.add(
                      NavigationEvent.changePage(pageIndexNumber: index),
                    );
                  }
                },
              ),
              body: getPage(),
            );
          },
        );
      },
    );
  }
}
