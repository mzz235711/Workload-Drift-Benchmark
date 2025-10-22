/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.role_id<10 and title.production_year>124 and title.series_years>0 and title.season_nr=0;

