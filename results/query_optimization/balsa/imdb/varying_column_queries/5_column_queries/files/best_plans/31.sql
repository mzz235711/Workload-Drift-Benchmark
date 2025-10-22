/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from movie_info,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<98 and title.kind_id<7 and title.episode_nr<1092 and title.series_years>0 and title.production_year>77;

