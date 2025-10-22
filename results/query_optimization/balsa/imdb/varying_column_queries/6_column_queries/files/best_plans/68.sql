/*+ NestLoop(title movie_info_idx movie_keyword cast_info movie_info)
 HashJoin(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>347 and cast_info.role_id=1 and movie_info_idx.info_type_id<101 and title.kind_id>1 and title.season_nr>0 and title.episode_nr>0;

