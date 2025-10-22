/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND movie_keyword.keyword_id<2178907 AND cast_info.nr_order<576838783 AND cast_info.role_id<8 AND title.episode_nr>1806 AND title.phonetic_code<4732;

