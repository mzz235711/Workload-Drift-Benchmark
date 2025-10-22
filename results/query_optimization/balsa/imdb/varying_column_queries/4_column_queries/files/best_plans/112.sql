/*+ HashJoin(cast_info title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((cast_info (((title movie_companies) movie_info_idx) movie_keyword))) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and cast_info.nr_order>1 and movie_info_idx.info_type_id<101 and title.episode_nr>0;

