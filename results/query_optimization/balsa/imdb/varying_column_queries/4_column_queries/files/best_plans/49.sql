/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year<121 and title.kind_id=7 and title.episode_nr<15;

