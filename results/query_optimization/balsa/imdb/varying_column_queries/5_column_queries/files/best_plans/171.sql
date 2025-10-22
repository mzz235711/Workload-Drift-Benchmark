/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.episode_nr>31 and title.phonetic_code>11276 and title.kind_id=7 and title.production_year<123;

