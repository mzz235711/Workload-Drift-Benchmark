/*+ MergeJoin(title movie_info_idx cast_info movie_keyword movie_info)
 NestLoop(title movie_info_idx cast_info movie_keyword)
 HashJoin(title movie_info_idx cast_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and movie_info.info_type_id>1 and movie_keyword.keyword_id>110 and title.kind_id>3 and title.production_year<125 and title.episode_nr>0;

