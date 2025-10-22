/*+ NestLoop(title movie_companies movie_keyword cast_info movie_info)
 HashJoin(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and movie_keyword.keyword_id<85206 and cast_info.nr_order<1000 and title.episode_nr>0 and title.production_year<114 and title.phonetic_code>1579;

