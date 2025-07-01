import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix_clone/domain/core/failures/main_failure.dart';
import 'package:netflix_clone/domain/downloads/i_download_repo.dart';
import 'package:netflix_clone/domain/downloads/models/downloads.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadRepo _downloadRepo;
  DownloadsBloc(this._downloadRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadImage>((event, emit) async {
      emit(
        state.copyWith(isLoading: true, downloadSuccesOrFailureOption: none()),
      );
      final Either<MainFailure, List<Downloads>> dowonloadOption =
          await _downloadRepo.getDownloadImage();
      emit(
        dowonloadOption.fold(
          (failed) => state.copyWith(
            isLoading: false,
            downloadSuccesOrFailureOption: Some(Left(failed)),
          ),
          (succes) => state.copyWith(
            isLoading: false,
            downloads: succes,
            downloadSuccesOrFailureOption: Some(Right(succes)),
          ),
        ),
      );
    });
  }
}
