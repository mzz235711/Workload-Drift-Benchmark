/*+ MergeJoin(title movie_info_idx movie_keyword movie_companies movie_info)
 NestLoop(title movie_info_idx movie_keyword movie_companies)
 MergeJoin(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>748 and movie_info.info_type_id>1 and movie_companies.company_type_id<2 and title.production_year<92;

