/*+ HashJoin(movie_info_idx title cast_info movie_info movie_keyword)
 NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) cast_info) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=99 and cast_info.nr_order<60 and title.series_years>0 and title.episode_nr<7;

