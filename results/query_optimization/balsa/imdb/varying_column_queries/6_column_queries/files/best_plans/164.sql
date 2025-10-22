/*+ NestLoop(title movie_info_idx cast_info movie_info)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>3 and movie_info.info_type_id>16 and title.production_year>70 and title.season_nr=0 and title.kind_id=7 and title.episode_nr<20;

