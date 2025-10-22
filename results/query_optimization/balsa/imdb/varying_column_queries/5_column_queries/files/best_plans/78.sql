/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<6241 and title.episode_nr>0 and title.kind_id>4 and title.production_year>0;

