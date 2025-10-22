/*+ HashJoin(movie_info title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info (((title movie_info_idx) movie_companies) movie_keyword))) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<124879 and movie_info.info_type_id<105 and movie_companies.company_type_id<2 and title.series_years>0 and title.kind_id>1;

