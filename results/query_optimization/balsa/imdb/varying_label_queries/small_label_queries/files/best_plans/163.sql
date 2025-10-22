/*+ MergeJoin(movie_keyword movie_info title)
 HashJoin(movie_info title)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_keyword (movie_info title))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.production_year=102 AND title.kind_id=6 AND movie_info.info_type_id<26 AND title.imdb_index<17;

