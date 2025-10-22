/*+ HashJoin(cast_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (title movie_companies))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.episode_nr<1 and title.phonetic_code<6444 and title.season_nr>2;

