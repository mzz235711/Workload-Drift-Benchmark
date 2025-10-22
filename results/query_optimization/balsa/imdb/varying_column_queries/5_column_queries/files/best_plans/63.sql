/*+ NestLoop(title movie_companies movie_info cast_info)
 HashJoin(title movie_companies movie_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and movie_info.info_type_id>2 and title.production_year<116 and title.season_nr=5 and title.imdb_index=0;

