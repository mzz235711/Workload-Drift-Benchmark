/*+ HashJoin(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((title cast_info) movie_info)) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>4 and cast_info.role_id>1 and title.production_year>120 and title.season_nr<2 and title.episode_nr<7;

