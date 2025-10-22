/*+ HashJoin(title movie_companies movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<36767 and movie_companies.company_type_id<2 and title.season_nr>0;

