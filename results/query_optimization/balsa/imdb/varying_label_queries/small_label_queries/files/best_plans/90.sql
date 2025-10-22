/*+ MergeJoin(movie_companies title movie_keyword)
 MergeJoin(movie_companies title)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading(((movie_companies title) movie_keyword)) */
SELECT COUNT(*) FROM movie_companies,movie_keyword,title WHERE title.id=movie_companies.movie_id AND movie_companies.movie_id=movie_keyword.movie_id AND title.episode_nr<10951 AND title.season_nr=31 AND title.phonetic_code<6117 AND title.imdb_index<4 AND movie_keyword.keyword_id<553329;

