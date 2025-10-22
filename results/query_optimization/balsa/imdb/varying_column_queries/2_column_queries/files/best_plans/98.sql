/*+ HashJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 Leading((movie_companies (movie_keyword title))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and title.season_nr>0;

