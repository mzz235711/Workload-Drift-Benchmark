/*+ MergeJoin(movie_keyword movie_info title)
 HashJoin(movie_info title)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_keyword (movie_info title))) */
SELECT COUNT(*) FROM movie_info,movie_keyword,title WHERE title.id=movie_info.movie_id AND movie_info.movie_id=movie_keyword.movie_id AND title.episode_nr<2216 AND title.imdb_index<3 AND title.phonetic_code>19740 AND title.series_years>1319;

