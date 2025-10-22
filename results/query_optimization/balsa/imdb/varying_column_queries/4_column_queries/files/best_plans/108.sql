/*+ MergeJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.production_year<127 and title.episode_nr>0 and title.series_years>0 and title.kind_id>1;

