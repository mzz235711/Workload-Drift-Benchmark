/*+ MergeJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id<34892 and title.series_years>0;

