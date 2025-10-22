/*+ HashJoin(movie_info movie_keyword title movie_info_idx cast_info)
 HashJoin(movie_keyword title movie_info_idx cast_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_info_idx) cast_info)))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id<11 and movie_info_idx.info_type_id>99 and movie_info.info_type_id<16 and title.series_years>0 and title.episode_nr<3;

