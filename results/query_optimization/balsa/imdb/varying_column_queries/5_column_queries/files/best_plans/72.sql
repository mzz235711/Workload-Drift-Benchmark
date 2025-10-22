/*+ HashJoin(movie_keyword movie_info title movie_info_idx cast_info)
 NestLoop(movie_info title movie_info_idx cast_info)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((movie_keyword ((movie_info (title movie_info_idx)) cast_info))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>461 and movie_info_idx.info_type_id=99 and cast_info.nr_order>4 and title.imdb_index>0 and title.season_nr=0;

