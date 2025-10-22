/*+ NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code>0;

