/*+ HashJoin(cast_info title movie_info_idx movie_info)
 NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((cast_info ((title movie_info_idx) movie_info))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.kind_id=7 and title.phonetic_code>0 and title.imdb_index=0;

