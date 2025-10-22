/*+ NestLoop(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
SELECT COUNT(*) FROM cast_info,movie_keyword,title WHERE title.id=movie_keyword.movie_id AND movie_keyword.movie_id=cast_info.movie_id AND title.episode_nr<12871 AND title.production_year=47 AND cast_info.nr_order<259923679 AND title.season_nr<66 AND cast_info.role_id>2;

