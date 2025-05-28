// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:nretail_app/presentation/home_screen/bloc/home_screen_bloc.dart'
    as _i1014;
import 'package:nretail_app/presentation/main_screen/bloc/main_screen_bloc.dart'
    as _i583;
import 'package:nretail_app/presentation/shop_screen/bloc/shop_screen_bloc.dart'
    as _i406;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i1014.HomeScreenBloc>(() => _i1014.HomeScreenBloc());
    gh.factory<_i583.MainScreenBloc>(() => _i583.MainScreenBloc());
    gh.factory<_i406.ShopScreenBloc>(() => _i406.ShopScreenBloc());
    return this;
  }
}
