/*+ NestLoop(title movie_companies movie_info_idx cast_info movie_info)
 HashJoin(title movie_companies movie_info_idx cast_info)
 HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) cast_info) movie_info)) */
select count(*) from movie_companies,cast_info,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=1 and cast_info.role_id=5 and movie_info.info_type_id>1 and title.production_year>120 and title.season_nr=0 and title.phonetic_code>1922;

