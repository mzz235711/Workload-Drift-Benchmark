/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<18 and movie_keyword.keyword_id<71422 and title.phonetic_code<5554 and title.imdb_index>0;

