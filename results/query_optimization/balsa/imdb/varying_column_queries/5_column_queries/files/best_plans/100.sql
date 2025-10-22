/*+ HashJoin(movie_keyword movie_info title movie_companies cast_info)
 HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_companies) cast_info)))) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<9 and movie_companies.company_type_id>1 and movie_info.info_type_id<8 and movie_keyword.keyword_id<2849 and title.production_year>35;

