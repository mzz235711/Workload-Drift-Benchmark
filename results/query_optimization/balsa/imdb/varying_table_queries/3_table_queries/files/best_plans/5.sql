/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.nr_order<14 and title.season_nr=2 and title.production_year<103 and title.phonetic_code<16066 and title.episode_nr<12;

