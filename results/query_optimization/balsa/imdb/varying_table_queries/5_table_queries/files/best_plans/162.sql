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
select count(*) from movie_info,movie_info_idx,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=100 and cast_info.role_id>1 and title.imdb_index>0 and title.season_nr=0 and title.production_year<113;

