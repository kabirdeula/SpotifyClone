part of 'auth_cubit.dart';

class AuthState extends Equatable {
  final bool isLoading;
  final bool isLoggedIn;
  final String? uid;

  const AuthState({
    this.isLoading = false,
    this.isLoggedIn = false,
    this.uid,
  });

  factory AuthState.initial() => const AuthState();

  AuthState copyWith({bool? isLoading, bool? isLoggedIn, String? uid}) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      uid: uid ?? this.uid,
    );
  }

  @override
  List<Object?> get props => [isLoading, isLoggedIn, uid];
}
