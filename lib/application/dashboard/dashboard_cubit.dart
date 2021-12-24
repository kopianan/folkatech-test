import 'package:bloc/bloc.dart';
import 'package:folkatech/domain/i_dashboard.dart';
import 'package:folkatech/domain/product_data_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(this.dashboard) : super(DashboardState.initial());
  IDashboard dashboard;

  //function cubit, this make changes of state so the ui know current state
  void getProductList() async {
    //set current state to loading
    emit(DashboardState.onLoading());
    //getting data loaded
    var _response = await dashboard.getProductList();
    //bread down and find if the response is error or success
    _response.fold(
      (l) => emit(DashboardState.onError()),
      (r) => emit(DashboardState.onGetProductList(r)),
    );
  }
}
