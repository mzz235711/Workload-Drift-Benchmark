/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.phonetic_code>0 and title.episode_nr<29 and title.production_year<123 and title.series_years>0;

