/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<98 and movie_info_idx.info_type_id=101 and title.phonetic_code>1788 and title.season_nr=1 and title.production_year<104;

