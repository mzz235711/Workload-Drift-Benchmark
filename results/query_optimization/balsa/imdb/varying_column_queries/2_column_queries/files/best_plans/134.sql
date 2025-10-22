/*+ HashJoin(movie_info cast_info movie_companies movie_keyword title)
 HashJoin(cast_info movie_companies movie_keyword title)
 HashJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info (cast_info (movie_companies (movie_keyword title))))) */
select count(*) from movie_info,movie_companies,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and title.series_years>0;

