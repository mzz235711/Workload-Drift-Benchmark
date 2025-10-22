/*+ NestLoop(movie_info_idx title movie_info movie_companies cast_info)
 NestLoop(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((((movie_info_idx title) movie_info) movie_companies) cast_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>15 and movie_companies.company_type_id>1 and title.season_nr=0 and title.series_years>397;

