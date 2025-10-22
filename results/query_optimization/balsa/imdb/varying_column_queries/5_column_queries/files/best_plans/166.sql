/*+ HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from cast_info,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=2 and movie_info.info_type_id<16 and movie_companies.company_type_id<2 and title.phonetic_code<5362 and title.season_nr<1;

