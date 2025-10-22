/*+ HashJoin(movie_info title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword cast_info)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_info_idx) movie_keyword) cast_info))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>3 and movie_info.info_type_id<107 and movie_info_idx.info_type_id=100 and cast_info.nr_order>9 and title.episode_nr>0;

