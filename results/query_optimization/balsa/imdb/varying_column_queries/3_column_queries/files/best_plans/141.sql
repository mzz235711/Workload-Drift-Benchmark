/*+ NestLoop(title movie_info_idx movie_companies movie_info cast_info)
 NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((title movie_info_idx) movie_companies) movie_info) cast_info)) */
select count(*) from movie_info,movie_companies,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.season_nr=0 and title.imdb_index>0;

