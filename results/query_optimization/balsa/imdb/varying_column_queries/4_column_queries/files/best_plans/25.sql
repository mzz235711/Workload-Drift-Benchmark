/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.phonetic_code>0 and title.season_nr<6 and title.production_year>111;

