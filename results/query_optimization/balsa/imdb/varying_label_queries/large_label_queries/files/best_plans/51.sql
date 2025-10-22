/*+ HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.role_id=4 AND title.imdb_index<21 AND title.production_year>61 AND title.phonetic_code<12828 AND movie_keyword.keyword_id<616831;

