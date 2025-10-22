/*+ HashJoin(cast_info title movie_companies movie_info)
 HashJoin(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info ((title movie_companies) movie_info))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>1 and movie_info.info_type_id>16 and title.episode_nr<11;

