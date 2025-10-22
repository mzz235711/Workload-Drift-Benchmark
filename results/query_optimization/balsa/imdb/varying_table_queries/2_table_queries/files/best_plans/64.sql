/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr>0 and title.phonetic_code>0;

