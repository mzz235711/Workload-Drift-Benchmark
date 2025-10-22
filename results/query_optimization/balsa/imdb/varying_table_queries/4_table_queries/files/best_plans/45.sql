/*+ MergeJoin(movie_info movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info ((movie_info_idx title) movie_keyword))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.kind_id<4;

