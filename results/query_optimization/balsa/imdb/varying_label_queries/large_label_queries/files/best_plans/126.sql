/*+ HashJoin(title movie_info movie_keyword)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((title movie_info) movie_keyword)) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.production_year>51 AND title.imdb_index<10 AND title.series_years<955 AND movie_info.info_type_id>6;

