/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<17 and movie_companies.company_type_id<2 and title.kind_id=4 and title.episode_nr<105 and title.phonetic_code<20505 and title.production_year<126;

