/*+ NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((title movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>1 and title.phonetic_code>3064 and title.imdb_index=0 and title.season_nr>0;

