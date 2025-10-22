/*+ NestLoop(title movie_info movie_companies)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.kind_id=2 and title.imdb_index>0 and title.phonetic_code>0 and title.series_years<1403;

