/*+ HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.kind_id=7 and title.series_years<1205;

