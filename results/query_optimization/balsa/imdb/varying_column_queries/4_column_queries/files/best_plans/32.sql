/*+ HashJoin(cast_info movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_keyword,movie_info,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>335 and movie_info.info_type_id>3 and title.kind_id>1 and title.series_years>0;

