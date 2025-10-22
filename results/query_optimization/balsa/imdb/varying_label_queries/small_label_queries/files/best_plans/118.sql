/*+ HashJoin(movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading(((movie_info_idx title) movie_keyword)) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_info_idx.info_type_id<107 AND title.production_year<38 AND title.imdb_index<17;

