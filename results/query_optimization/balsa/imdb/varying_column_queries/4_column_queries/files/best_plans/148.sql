/*+ HashJoin(title movie_keyword movie_info_idx movie_companies movie_info)
 NestLoop(title movie_keyword movie_info_idx movie_companies)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((title movie_keyword) movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=1 and movie_info_idx.info_type_id=100 and title.season_nr=0 and title.production_year<74;

