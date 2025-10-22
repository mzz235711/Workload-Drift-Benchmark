/*+ NestLoop(title movie_companies movie_keyword)
 MergeJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index>11 AND movie_companies.company_type_id=1 AND title.kind_id<5 AND title.series_years<894;

