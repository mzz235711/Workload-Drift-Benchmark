/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.production_year>118 and title.kind_id>1 and title.season_nr=0;

