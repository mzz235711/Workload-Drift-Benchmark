/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.series_years<1233 AND title.production_year=48 AND title.imdb_index<17 AND title.episode_nr<7007;

