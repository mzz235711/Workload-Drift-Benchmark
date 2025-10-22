/*+ HashJoin(cast_info movie_keyword movie_info_idx title movie_info)
 HashJoin(cast_info movie_keyword movie_info_idx title)
 MergeJoin(movie_keyword movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 Leading(((cast_info (movie_keyword (movie_info_idx title))) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.episode_nr>7;

