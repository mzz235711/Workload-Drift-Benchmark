/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<31051 and movie_info_idx.info_type_id=101 and title.episode_nr<54 and title.production_year<126 and title.series_years>0;

