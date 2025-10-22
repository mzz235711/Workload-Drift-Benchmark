/*+ NestLoop(title movie_companies movie_info)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id>3 and title.production_year<125 and title.season_nr>0 and title.episode_nr>0 and title.phonetic_code<916;

