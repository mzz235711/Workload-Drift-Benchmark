/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year<125 and title.kind_id<4 and title.phonetic_code<7081 and title.imdb_index>0;

