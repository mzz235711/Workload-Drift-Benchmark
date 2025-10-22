/*+ NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.series_years>0 and title.kind_id<7 and title.imdb_index>0;

