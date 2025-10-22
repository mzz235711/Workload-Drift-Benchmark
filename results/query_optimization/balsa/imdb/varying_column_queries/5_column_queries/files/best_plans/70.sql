/*+ HashJoin(movie_info title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword cast_info)
 HashJoin(title movie_companies movie_keyword)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((movie_info (((title movie_companies) movie_keyword) cast_info))) */
select count(*) from cast_info,movie_keyword,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<4 and movie_companies.company_type_id>1 and title.phonetic_code<14588 and title.episode_nr>0 and title.production_year<120;

