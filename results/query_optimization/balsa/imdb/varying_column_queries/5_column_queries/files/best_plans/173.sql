/*+ HashJoin(movie_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>750 and movie_companies.company_type_id<2 and movie_info.info_type_id>3 and title.season_nr=0 and title.production_year<122;

