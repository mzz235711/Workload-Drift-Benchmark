/*+ HashJoin(title movie_info movie_companies)
 NestLoop(title movie_info)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 Leading(((title movie_info) movie_companies)) */
SELECT COUNT(*) FROM movie_companies,movie_info,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_companies.movie_id AND title.episode_nr<9876 AND title.phonetic_code<4291 AND title.series_years<1120 AND title.imdb_index<11;

