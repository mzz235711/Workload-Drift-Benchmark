/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<106 and title.production_year<116 and title.phonetic_code>8573 and title.episode_nr<43 and title.imdb_index=0;

