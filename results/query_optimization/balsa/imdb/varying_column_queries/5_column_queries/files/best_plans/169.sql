/*+ NestLoop(movie_info title movie_companies cast_info)
 HashJoin(movie_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading(((movie_info (title movie_companies)) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.imdb_index=0 and title.production_year<125 and title.season_nr>0 and title.phonetic_code>21769;

