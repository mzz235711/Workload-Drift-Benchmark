/*+ HashJoin(movie_info title movie_companies movie_keyword)
 NestLoop(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_companies) movie_keyword))) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<74017 and movie_companies.company_type_id<2 and title.kind_id=1 and title.production_year>115 and title.phonetic_code<2583;

