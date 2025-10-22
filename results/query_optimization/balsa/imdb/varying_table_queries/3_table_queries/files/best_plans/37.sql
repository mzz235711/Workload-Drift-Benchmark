/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.role_id>1 and title.imdb_index=0 and title.season_nr=0 and title.series_years>0;

