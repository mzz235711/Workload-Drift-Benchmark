/*+ HashJoin(title movie_keyword cast_info)
 HashJoin(title movie_keyword)
 SeqScan(title)
 SeqScan(movie_keyword)
 SeqScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND cast_info.role_id=6 AND title.production_year>61 AND title.phonetic_code>17087 AND title.imdb_index>1;

