/*+ HashJoin(movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading(((movie_info_idx title) movie_keyword)) */
SELECT COUNT(*) FROM movie_info_idx,movie_keyword,title WHERE title.id=movie_info_idx.movie_id AND movie_info_idx.movie_id=movie_keyword.movie_id AND title.season_nr<82 AND title.series_years<594 AND title.production_year=37 AND movie_keyword.keyword_id<2669638 AND title.imdb_index<18;

