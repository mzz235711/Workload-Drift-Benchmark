/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.season_nr>0 and title.episode_nr>0 and title.phonetic_code<2496 and title.production_year>120;

