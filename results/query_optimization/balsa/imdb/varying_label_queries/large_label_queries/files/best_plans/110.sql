/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.season_nr<78 AND title.imdb_index<11 AND title.phonetic_code<11554 AND title.series_years<585;

