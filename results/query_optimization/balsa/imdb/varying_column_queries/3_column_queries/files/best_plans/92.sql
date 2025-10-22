/*+ HashJoin(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 Leading(((title movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=99 and cast_info.nr_order<7 and title.imdb_index=0;

