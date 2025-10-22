/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>117 and movie_companies.company_type_id=1 and title.phonetic_code<6678 and title.episode_nr>0;

