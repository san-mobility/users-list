import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/common.dart';
import '../../../../core/utils/custom_text.dart';
import '../../application/home_bloc.dart';

class UserDetailPage extends StatefulWidget {
  final int userId;

  const UserDetailPage({super.key, required this.userId});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeBloc()..add(GetUserDetailEvent(userId: widget.userId.toString())),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) async {
          // listening
        },
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {

            if (state.status == HomeStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state.status == HomeStatus.loaded &&
                state.selectedUser != null) {
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
                        text: 'Users Detail',
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
                              MyText(
                                text: 'Name :${state.selectedUser!.name}',
                                textStyle:
                                    Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(height: size.width * 0.02),
                              MyText(
                                text: 'Email :${state.selectedUser!.name}',
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.02),
                              MyText(
                                text:
                                    'Phone Number :${state.selectedUser!.name}',
                                maxLines: 2,
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.02),
                              MyText(
                                text:
                                    'Phone Number :${state.selectedUser!.website}',
                                maxLines: 2,
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.03),
                              MyText(
                                text: 'Address',
                                textStyle:
                                    Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(height: size.width * 0.03),
                              MyText(
                                text: 'Street : ${state.selectedUser!.address.street}',
                                maxLines: 5,
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.02),
                               MyText(
                                text: 'City : ${state.selectedUser!.address.city}',
                                maxLines: 5,
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.02),
                               MyText(
                                text: 'PinCode : ${state.selectedUser!.address.zipcode}',
                                maxLines: 1,
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.02),
                              MyText(
                                text: 'Company Details',
                                textStyle:
                                    Theme.of(context).textTheme.bodyLarge,
                              ),
                              SizedBox(height: size.width * 0.02),
                              MyText(
                                text:
                                    'Name :${state.selectedUser!.company.name}',
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.02),
                              MyText(
                                text:
                                    'Catch Phrase :${state.selectedUser!.company.catchPhrase}',
                                maxLines: 2,
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.02),
                              MyText(
                                text: 'BS :${state.selectedUser!.company.bs}',
                                maxLines: 2,
                                textStyle:
                                    Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(height: size.width * 0.03),
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
