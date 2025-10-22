/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.imdb_index<5 AND movie_keyword.keyword_id<4189089 AND cast_info.role_id=7 AND title.phonetic_code>17000 AND title.series_years<745;

