/*+ MergeJoin(cast_info movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info ((movie_info_idx title) movie_keyword))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>0 and title.episode_nr<90 and title.series_years<1366;

