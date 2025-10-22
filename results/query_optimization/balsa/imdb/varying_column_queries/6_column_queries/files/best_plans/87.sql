/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>335 and movie_companies.company_type_id>1 and title.phonetic_code>13531 and title.production_year>106 and title.episode_nr>0 and title.season_nr>0;

