/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.series_years<511 AND title.production_year>12 AND movie_info_idx.info_type_id<112 AND title.imdb_index=0;

