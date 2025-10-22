/*+ MergeJoin(movie_keyword movie_info_idx title cast_info movie_info)
 MergeJoin(movie_keyword movie_info_idx title cast_info)
 NestLoop(movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((movie_keyword ((movie_info_idx title) cast_info)) movie_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.episode_nr>0;

