/*+ HashJoin(cast_info movie_companies movie_keyword title)
 HashJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_companies (movie_keyword title)))) */
select count(*) from movie_keyword,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.production_year<126;

