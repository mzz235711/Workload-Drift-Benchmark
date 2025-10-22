/*+ NestLoop(movie_companies title movie_keyword cast_info movie_info)
 HashJoin(movie_companies title movie_keyword cast_info)
 NestLoop(movie_companies title movie_keyword)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading(((((movie_companies title) movie_keyword) cast_info) movie_info)) */
select count(*) from movie_keyword,movie_info,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>347 and movie_info.info_type_id<105 and cast_info.nr_order<9 and movie_companies.company_type_id<2 and title.episode_nr>0 and title.production_year>124 and title.phonetic_code>3201;

