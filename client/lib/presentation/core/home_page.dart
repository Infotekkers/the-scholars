import 'package:client/application/application/application_bloc.dart';
import 'package:client/application/util/util_bloc.dart';
import 'package:client/presentation/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Start Profile Check Event
    final UtilBloc _utilBloc = BlocProvider.of<UtilBloc>(context);
    _utilBloc.add(const UtilEvent.checkProfileCompletion());

    // Start Application Cache Event
    final ApplicationBloc _applicationBloc =
        BlocProvider.of<ApplicationBloc>(context);
    _applicationBloc.add(const ApplicationEvent.checkCacheApplication());

    return BlocConsumer<UtilBloc, UtilState>(
      listener: (context, state) {
        // If Profile is not complete
        if (state.isProfileComplete == false) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return const Scaffold(
                  body: ProfilePage(
                    showMessage: true,
                  ),
                );
              },
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Container(),
          floatingActionButton: BlocConsumer<ApplicationBloc, ApplicationState>(
            listener: (context, state) {},
            builder: (context, state) {
              return FloatingActionButton(
                tooltip: "Add New Application",
                backgroundColor: Colors.purple,
                onPressed: () {
                  // Start event of checking cache
                  BlocProvider.of<ApplicationBloc>(context)
                      .add(const ApplicationEvent.checkCacheApplication());
                  // If Application is Cached
                  if (state.isApplicationCached) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content:
                            Text("Seems like you have an active application"),
                      ),
                    );

                    Navigator.pushNamed(context, '/second');
                  } else {
                    Navigator.pushNamed(context, '/application');
                  }
                },
                child: const Icon(Icons.add),
              );
            },
          ),
        );
      },
    );
  }
}
