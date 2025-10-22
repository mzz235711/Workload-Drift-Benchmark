/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.season_nr<8 and title.kind_id>1 and title.production_year<127;

