/*+ NestLoop(movie_info_idx title movie_keyword)
 NestLoop(movie_info_idx title)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_keyword)
 Leading(((movie_info_idx title) movie_keyword)) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.phonetic_code>15309 AND title.imdb_index<1 AND title.production_year=63 AND movie_info_idx.info_type_id>107;

