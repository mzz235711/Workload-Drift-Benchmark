/*+ HashJoin(movie_info title cast_info movie_info_idx movie_keyword)
 MergeJoin(title cast_info movie_info_idx movie_keyword)
 MergeJoin(title cast_info movie_info_idx)
 MergeJoin(title cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading((movie_info (((title cast_info) movie_info_idx) movie_keyword))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=99 and movie_info.info_type_id<8 and cast_info.role_id>1 and movie_keyword.keyword_id<13847 and title.imdb_index=0;

