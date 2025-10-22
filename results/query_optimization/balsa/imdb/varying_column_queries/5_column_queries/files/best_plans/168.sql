/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order<21 and title.phonetic_code>0 and title.episode_nr>6 and title.production_year<94 and title.kind_id=7;

