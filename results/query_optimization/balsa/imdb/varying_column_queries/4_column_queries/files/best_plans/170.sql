/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.kind_id<7 and title.phonetic_code>0 and title.production_year>25 and title.imdb_index>0;

