/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code<19864 and title.series_years>0 and title.imdb_index=0 and title.episode_nr<106;

