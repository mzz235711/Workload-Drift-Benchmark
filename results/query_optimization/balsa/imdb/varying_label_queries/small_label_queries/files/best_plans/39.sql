/*+ NestLoop(movie_info_idx movie_keyword title)
 NestLoop(movie_info_idx movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(title)
 Leading(((movie_info_idx movie_keyword) title)) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.season_nr<37 AND title.imdb_index<9 AND title.episode_nr<9692 AND movie_info_idx.info_type_id>102;

