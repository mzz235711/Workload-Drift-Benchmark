/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.nr_order<906622174 AND title.imdb_index<21 AND movie_keyword.keyword_id<940272 AND title.season_nr<65 AND title.series_years>819;

