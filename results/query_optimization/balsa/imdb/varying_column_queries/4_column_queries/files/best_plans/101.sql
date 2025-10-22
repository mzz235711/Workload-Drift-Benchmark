/*+ HashJoin(cast_info movie_info movie_keyword title movie_companies)
 NestLoop(movie_info movie_keyword title movie_companies)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info (movie_keyword title)) movie_companies))) */
select count(*) from movie_companies,cast_info,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>1 and movie_info.info_type_id>1 and title.production_year>127;

