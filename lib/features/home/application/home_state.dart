part of 'home_bloc.dart';


enum HomeStatus {
  initial,
  loading,
  loaded,
  error,
  logOut,
  update,
  deleteAccount,
}

class HomeState extends Equatable {
  final HomeStatus status;
  final String textDirection;
  final String languageCode;
  final List<UsersListModel> users;
  final UsersListModel? selectedUser;

  const HomeState({
    required this.status,
    required this.textDirection,
    required this.languageCode,
    required this.users,
    required this.selectedUser
  });

  static HomeState initial() => const HomeState(
        status: HomeStatus.initial,
        textDirection: 'ltr',
        languageCode: '',
        users: [],
        selectedUser: null,
      );

  HomeState copyWith({
    HomeStatus? status,
    String? textDirection,
    String? languageCode,
    List<UsersListModel>? users,
    UsersListModel? selectedUser,

  }) =>
      HomeState(
        status: status ?? this.status,
        textDirection: textDirection ?? this.textDirection,
        languageCode: languageCode ?? this.languageCode,
        users: users ?? this.users,
        selectedUser: selectedUser ?? this.selectedUser
      );

  @override
  List get props => [
        status,
        textDirection,
        languageCode,
        users.map((e) => e.hashCode),
        selectedUser,
      ];
}
