/*+ HashJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 Leading((movie_companies (movie_keyword title))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id<101633 and title.series_years>0;

