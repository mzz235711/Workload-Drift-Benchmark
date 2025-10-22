/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.episode_nr<11 and title.imdb_index=0 and title.production_year>15 and title.kind_id=7;

