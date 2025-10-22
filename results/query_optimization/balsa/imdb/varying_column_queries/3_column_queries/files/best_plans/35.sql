/*+ NestLoop(title movie_info movie_info_idx)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_info_idx)
 Leading(((title movie_info) movie_info_idx)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.imdb_index>0 and title.production_year<125;

