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
select count(*) from movie_info,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id>245 and title.phonetic_code>1420 and title.series_years>0;

