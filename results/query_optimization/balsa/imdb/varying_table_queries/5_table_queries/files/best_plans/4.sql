/*+ HashJoin(movie_info_idx title movie_companies cast_info movie_info)
 NestLoop(movie_info_idx title movie_companies cast_info)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<94 and movie_companies.company_type_id>1 and title.kind_id>1;

