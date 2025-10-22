/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.series_years>0 and title.imdb_index>0 and title.production_year<127;

