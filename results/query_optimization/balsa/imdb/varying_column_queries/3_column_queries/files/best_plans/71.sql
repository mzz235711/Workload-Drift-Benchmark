/*+ HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.season_nr=0 and title.phonetic_code>0 and title.production_year>82;

