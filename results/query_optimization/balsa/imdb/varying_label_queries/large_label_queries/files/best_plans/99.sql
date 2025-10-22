/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.nr_order<546248580 AND title.series_years>106 AND movie_keyword.keyword_id<3433304 AND title.kind_id<6;

