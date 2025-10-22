/*+ MergeJoin(cast_info movie_info_idx title movie_keyword movie_info)
 MergeJoin(cast_info movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((cast_info ((movie_info_idx title) movie_keyword)) movie_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,movie_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.nr_order<10 and title.season_nr>0;

