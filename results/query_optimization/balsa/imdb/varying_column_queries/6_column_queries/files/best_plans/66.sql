/*+ NestLoop(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id>1 and movie_companies.company_type_id<2 and title.episode_nr<1 and title.kind_id<7 and title.production_year<90 and title.phonetic_code<14715;

