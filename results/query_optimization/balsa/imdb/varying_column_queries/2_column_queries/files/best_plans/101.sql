/*+ HashJoin(movie_keyword title movie_info_idx movie_info cast_info)
 MergeJoin(movie_keyword title movie_info_idx movie_info)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_keyword title) movie_info_idx) movie_info) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.imdb_index>0 and title.phonetic_code>0;

