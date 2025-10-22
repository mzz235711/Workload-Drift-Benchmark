/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order>1 and title.episode_nr>1 and title.production_year<113;

