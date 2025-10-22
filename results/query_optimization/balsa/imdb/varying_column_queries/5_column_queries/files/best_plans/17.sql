/*+ NestLoop(title cast_info movie_companies movie_info_idx movie_keyword)
 NestLoop(title cast_info movie_companies movie_info_idx)
 NestLoop(title cast_info movie_companies)
 MergeJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((((title cast_info) movie_companies) movie_info_idx) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id<101 and cast_info.role_id>10 and title.season_nr=0 and title.series_years>0;

