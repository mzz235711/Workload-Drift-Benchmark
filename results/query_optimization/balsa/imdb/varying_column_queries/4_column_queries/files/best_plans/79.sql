/*+ HashJoin(movie_info_idx movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info_idx (movie_info (movie_keyword title)))) */
select count(*) from movie_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_keyword.keyword_id<10292 and title.episode_nr<22 and title.series_years>0;

