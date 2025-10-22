/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.kind_id<7 and title.production_year<126 and title.episode_nr<36;

