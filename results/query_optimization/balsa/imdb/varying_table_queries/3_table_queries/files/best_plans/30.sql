/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.season_nr=1 and title.imdb_index=0 and title.phonetic_code<543;

