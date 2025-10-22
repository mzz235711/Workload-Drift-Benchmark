/*+ MergeJoin(movie_companies title movie_info)
 NestLoop(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.series_years>0;

