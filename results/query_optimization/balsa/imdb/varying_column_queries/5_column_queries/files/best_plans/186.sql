/*+ HashJoin(movie_info title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info (((title movie_info_idx) movie_companies) movie_keyword))) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_companies.company_type_id=2 and movie_keyword.keyword_id>449 and title.series_years<1352 and title.production_year<119;

