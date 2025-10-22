/*+ HashJoin(cast_info title movie_info_idx movie_keyword movie_info)
 HashJoin(cast_info title movie_info_idx movie_keyword)
 HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((cast_info (title movie_info_idx)) movie_keyword) movie_info)) */
select count(*) from movie_keyword,cast_info,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<15 and movie_info.info_type_id>1 and title.production_year>103 and title.episode_nr>1;

