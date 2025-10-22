/*+ HashJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_keyword (movie_info_idx title))) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.phonetic_code<5196 AND title.season_nr<12 AND title.imdb_index<12 AND title.episode_nr<5076 AND title.series_years<963;

