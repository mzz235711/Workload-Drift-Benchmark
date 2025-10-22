/*+ HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.episode_nr<928 AND title.imdb_index=6 AND movie_keyword.keyword_id<207819;

