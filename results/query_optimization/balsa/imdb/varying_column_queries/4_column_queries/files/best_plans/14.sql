/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<33529 and movie_info.info_type_id>1 and movie_info_idx.info_type_id=100 and title.episode_nr>0;

