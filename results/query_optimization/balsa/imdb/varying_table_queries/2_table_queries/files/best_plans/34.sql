/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 IndexScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year>69 and title.season_nr<1 and title.kind_id<7 and title.imdb_index=0;

