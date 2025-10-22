/*+ HashJoin(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 SeqScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<103 and cast_info.role_id>1 and title.season_nr=0 and title.phonetic_code>16013 and title.production_year<43;

