/*+ NestLoop(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id<10 and title.production_year>124 and title.season_nr>0 and title.phonetic_code>3926 and title.episode_nr>0;

