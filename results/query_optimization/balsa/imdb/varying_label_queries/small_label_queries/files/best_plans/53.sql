/*+ MergeJoin(movie_companies title movie_keyword)
 MergeJoin(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading(((movie_companies title) movie_keyword)) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.imdb_index<15 AND title.production_year<25 AND movie_keyword.keyword_id<435241 AND title.series_years>1104;

