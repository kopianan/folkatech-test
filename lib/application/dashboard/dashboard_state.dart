part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.onLoading() = _OnLoading;
  const factory DashboardState.onError() = _OnError;
  const factory DashboardState.onGetProductList(List<ProductDataModel> list) =
      _OnGetProductList;
}
