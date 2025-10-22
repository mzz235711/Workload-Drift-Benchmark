/*+ HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_keyword (title movie_info_idx))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND movie_info_idx.info_type_id<111 AND title.imdb_index<6 AND title.season_nr<58 AND title.series_years<858 AND title.phonetic_code<20239;

