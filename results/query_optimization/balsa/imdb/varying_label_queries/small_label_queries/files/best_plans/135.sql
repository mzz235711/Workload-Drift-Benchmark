/*+ HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<979773 AND title.phonetic_code>2080 AND title.kind_id<2 AND title.imdb_index<24 AND title.production_year=69 AND title.season_nr<26;

