/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.kind_id<7;

