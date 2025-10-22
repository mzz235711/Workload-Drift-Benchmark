/*+ NestLoop(title movie_keyword movie_info_idx cast_info)
 HashJoin(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info_idx) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>1 and movie_info_idx.info_type_id>99 and cast_info.role_id<10 and title.imdb_index=0 and title.episode_nr>0 and title.season_nr>0;

