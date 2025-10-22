/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.episode_nr>1260 AND title.imdb_index<24 AND movie_keyword.keyword_id<3006933 AND title.phonetic_code<1620;

