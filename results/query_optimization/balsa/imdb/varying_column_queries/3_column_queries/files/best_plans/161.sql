/*+ NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.production_year>125 and title.phonetic_code<15630;

