/*+ NestLoop(title movie_info_idx cast_info movie_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) cast_info) movie_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id<16 and title.kind_id>1 and title.production_year<126 and title.season_nr=0 and title.phonetic_code>0;

