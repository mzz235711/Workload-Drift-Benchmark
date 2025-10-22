/*+ NestLoop(movie_info title cast_info)
 HashJoin(movie_info title)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading(((movie_info title) cast_info)) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id<106 and title.imdb_index>0 and title.phonetic_code>3956 and title.kind_id>1 and title.season_nr=0;

