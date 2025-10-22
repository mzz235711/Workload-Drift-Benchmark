/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.kind_id<2 AND title.series_years<78 AND movie_companies.company_type_id<2 AND movie_keyword.keyword_id<1286003 AND title.imdb_index<14;

