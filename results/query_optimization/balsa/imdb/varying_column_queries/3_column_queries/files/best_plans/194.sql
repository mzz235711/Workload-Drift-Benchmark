/*+ NestLoop(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=100 and title.episode_nr>0 and title.production_year>122;

