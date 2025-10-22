/*+ HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<20 AND title.production_year>30 AND movie_keyword.keyword_id<613132 AND title.series_years<508;

