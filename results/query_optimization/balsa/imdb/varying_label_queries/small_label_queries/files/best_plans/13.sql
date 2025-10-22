/*+ HashJoin(movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading(((movie_info_idx title) movie_keyword)) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.production_year=66 AND title.episode_nr<12126 AND title.imdb_index<6 AND title.phonetic_code<741;

