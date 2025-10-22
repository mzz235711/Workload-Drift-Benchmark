/*+ HashJoin(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading(((title cast_info) movie_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and title.imdb_index=0 and title.production_year<126 and title.episode_nr<4 and title.phonetic_code>11774;

