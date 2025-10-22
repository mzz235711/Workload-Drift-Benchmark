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
select count(*) from movie_info,movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_keyword.keyword_id>242 and cast_info.nr_order<15 and title.episode_nr>7 and title.phonetic_code<802;

