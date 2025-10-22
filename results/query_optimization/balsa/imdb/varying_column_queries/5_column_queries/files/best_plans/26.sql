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
select count(*) from movie_info,cast_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=2 and title.season_nr<21 and title.production_year<125 and title.kind_id<7 and title.series_years>0;

