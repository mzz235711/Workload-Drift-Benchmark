/*+ NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.series_years>0 and title.kind_id<7 and title.phonetic_code>16805 and title.episode_nr<31;

