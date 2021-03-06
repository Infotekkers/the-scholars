import 'package:client/application/application/application_bloc.dart';
import 'package:client/application/profile/profile_bloc.dart';
import 'package:client/application/util/util_bloc.dart';
import 'package:client/application/view_application/view_application_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/core/widgets/flash_message.dart';
import 'package:client/presentation/profile/profile_page.dart';
import 'package:client/presentation/view_applications/widget/application_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Start Profile Check Event
    final UtilBloc _utilBloc = BlocProvider.of<UtilBloc>(context);
    _utilBloc.add(const UtilEvent.checkProfileCompletion());

    // Start Application Cache Event - IF FIRST PAGE IS CACHED
    final ApplicationBloc _applicationBloc =
        BlocProvider.of<ApplicationBloc>(context);
    _applicationBloc.add(const ApplicationEvent.checkCacheApplication());

    // Application Bloc
    final ViewApplicationBloc _viewApplicationBloc =
        getIt<ViewApplicationBloc>();
    _viewApplicationBloc.add(const ViewApplicationEvent.started());

    return BlocConsumer<UtilBloc, UtilState>(
      listener: (context, state) {
        // If Profile is not complete
        if (state.isProfileComplete == false) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return BlocProvider.value(
                  value: getIt<ProfileBloc>(),
                  child: const Scaffold(
                    body: ProfilePage(),
                  ),
                );
              },
            ),
          );
        }
      },
      builder: (context, state) {
        return LiquidPullToRefresh(
          color: Theme.of(context).primaryColor,
          backgroundColor: Colors.black,
          showChildOpacityTransition: true,
          animSpeedFactor: 3,
          onRefresh: () async {
            getIt<ViewApplicationBloc>()
                .add(const ViewApplicationEvent.started());
          },
          child: Scaffold(
            body: DefaultTabController(
              length: 4,
              child: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 45,
                  backgroundColor: Colors.white,
                  bottom: const TabBar(
                    indicatorColor: Colors.black,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.all_inbox,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.check,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.pending,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.remove_done,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
                body: Container(
                  padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
                  child: TabBarView(
                    children: [
                      BlocProvider.value(
                        value: _viewApplicationBloc,
                        child: const ApplicationViewTab(
                            admissionStatusToMatch: ""),
                      ),
                      BlocProvider.value(
                        value: _viewApplicationBloc,
                        child: const ApplicationViewTab(
                            admissionStatusToMatch: "accepted"),
                      ),
                      BlocProvider.value(
                        value: _viewApplicationBloc,
                        child: const ApplicationViewTab(
                            admissionStatusToMatch: "pending"),
                      ),
                      BlocProvider.value(
                        value: _viewApplicationBloc,
                        child: const ApplicationViewTab(
                            admissionStatusToMatch: "rejected"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            floatingActionButton:
                BlocConsumer<ApplicationBloc, ApplicationState>(
              listener: (context, state) {},
              builder: (context, state) {
                print("@home page : ${state.isApplicationPending}");
                return FloatingActionButton(
                  key: const ValueKey("homePageFAB"),
                  tooltip: "Add New Application",
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    if (!state.isApplicationPending) {
                      // Start event of checking cache
                      BlocProvider.of<ApplicationBloc>(context)
                          .add(const ApplicationEvent.checkCacheApplication());
                      // If Application is Cached
                      if (state.isApplicationCached) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                                "Seems like you have an active application"),
                          ),
                        );

                        Navigator.pushNamed(context, '/second');
                      } else {
                        Navigator.pushNamed(context, '/application');
                      }
                    } else {
                      getWrappedFlashMessage(
                          context, "You have a pending application.");
                    }
                  },
                  child: const Icon(Icons.add),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
