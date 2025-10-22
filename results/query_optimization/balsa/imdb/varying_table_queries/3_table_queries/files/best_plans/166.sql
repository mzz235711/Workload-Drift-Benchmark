/*+ NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.episode_nr>0 and title.production_year<122;

