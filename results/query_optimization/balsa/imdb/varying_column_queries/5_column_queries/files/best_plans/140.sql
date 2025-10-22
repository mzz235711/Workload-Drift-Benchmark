/*+ NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_info_idx.info_type_id>99 and title.episode_nr<1 and title.kind_id=7 and title.season_nr>3;

