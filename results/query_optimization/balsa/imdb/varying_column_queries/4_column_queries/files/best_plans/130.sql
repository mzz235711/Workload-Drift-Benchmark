/*+ HashJoin(cast_info title movie_keyword movie_companies movie_info)
 HashJoin(title movie_keyword movie_companies movie_info)
 NestLoop(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_companies) movie_info))) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<16 and movie_companies.company_type_id>1 and cast_info.role_id=1 and title.episode_nr>0;

