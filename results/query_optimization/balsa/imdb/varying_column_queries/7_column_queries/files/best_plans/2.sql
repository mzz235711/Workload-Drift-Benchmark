/*+ NestLoop(title movie_info_idx movie_companies movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 MergeJoin(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>355 and cast_info.role_id=1 and movie_info_idx.info_type_id=101 and movie_companies.company_type_id=1 and title.series_years>0 and title.imdb_index=0 and title.production_year>119;

