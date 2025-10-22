/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.imdb_index=0 and title.episode_nr<6370 and title.season_nr=0 and title.series_years>0;

