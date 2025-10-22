/*+ HashJoin(movie_info_idx title movie_info cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_info cast_info)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<5 and title.production_year<126 and title.series_years<1400;

