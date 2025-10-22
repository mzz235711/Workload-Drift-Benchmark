/*+ NestLoop(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<98 and cast_info.role_id>1 and movie_companies.company_type_id=2 and title.series_years>0;

