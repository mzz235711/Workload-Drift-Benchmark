/*+ HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND movie_keyword.keyword_id<3659123 AND title.phonetic_code<5759 AND title.kind_id>4 AND title.imdb_index<16 AND title.production_year<122 AND title.season_nr<71;

