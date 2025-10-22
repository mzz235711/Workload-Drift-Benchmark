/*+ HashJoin(cast_info movie_info_idx title movie_info movie_keyword)
 HashJoin(cast_info movie_info_idx title movie_info)
 HashJoin(movie_info_idx title movie_info)
 MergeJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((cast_info (movie_info_idx (title movie_info))) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and title.episode_nr>0;

