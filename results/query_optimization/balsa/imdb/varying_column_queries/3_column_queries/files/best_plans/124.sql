/*+ NestLoop(title movie_info_idx movie_companies cast_info movie_info)
 NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id=2 and movie_info_idx.info_type_id>99 and title.imdb_index>0;

