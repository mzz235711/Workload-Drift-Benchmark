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
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>1578 and movie_info_idx.info_type_id<101 and movie_info.info_type_id<75 and movie_companies.company_type_id=2 and title.imdb_index=0;

