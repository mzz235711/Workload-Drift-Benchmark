/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code<13363 and title.season_nr<5 and title.production_year>65 and title.imdb_index>0;

