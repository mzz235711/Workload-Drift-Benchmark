/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<126 and title.kind_id=7 and title.imdb_index=0;

