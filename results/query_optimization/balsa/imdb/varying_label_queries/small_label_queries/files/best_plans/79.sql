/*+ HashJoin(movie_keyword title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.phonetic_code<9710 AND title.series_years>372 AND movie_info_idx.info_type_id<100 AND title.imdb_index<8;

