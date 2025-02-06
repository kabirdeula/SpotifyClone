part of 'dashboard_cubit.dart';

class DashboardState extends Equatable {
  final bool isLoading;
  final int index;
  final String? error;

  const DashboardState({
    this.isLoading = false,
    this.error,
    this.index = 0,
  });

  factory DashboardState.initial() => const DashboardState();

  DashboardState copyWith({
    bool? isLoading,
    String? error,
    int? index,
  }) {
    return DashboardState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      index: index ?? this.index,
    );
  }

  @override
  List<Object?> get props => [isLoading, error, index];
}
