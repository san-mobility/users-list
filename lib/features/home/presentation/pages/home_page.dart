import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/common.dart';
import '../../../../core/utils/custom_text.dart';
import '../../application/home_bloc.dart';
import 'user_detail_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/homePage';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(GetUsersListEvent()),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) async {
          // listening
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {

            if (state.status == HomeStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status == HomeStatus.loaded) {
              return PopScope(
                canPop: true,
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: Scaffold(
                    appBar: AppBar(
                      automaticallyImplyLeading: false,
                      backgroundColor: Theme.of(context).primaryColor,
                      surfaceTintColor: Theme.of(context).primaryColor,
                      foregroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      iconTheme: const IconThemeData(color: AppColors.white),
                      title: MyText(
                        text: 'Users List',
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                      ),
                    ),
                    body: SafeArea(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListView.builder(
                                itemCount: state.users.length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  final user = state.users.elementAt(index);
                                  return ListTile(
                                    title: MyText(text: user.name),
                                    subtitle: MyText(text: user.email),
                                    onTap: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailPage(
                                        userId: user.id,),));
                                    },
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
