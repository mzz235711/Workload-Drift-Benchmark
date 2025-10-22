/*+ MergeJoin(cast_info title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_keyword) movie_info))) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<71744 and title.episode_nr>0;

