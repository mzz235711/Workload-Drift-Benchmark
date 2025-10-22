/*+ NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading(((title movie_keyword) movie_companies)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.series_years>0 and title.phonetic_code>0 and title.episode_nr>0 and title.production_year<126;

