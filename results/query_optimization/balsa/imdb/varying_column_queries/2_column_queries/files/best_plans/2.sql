/*+ HashJoin(movie_info movie_companies movie_keyword title)
 HashJoin(movie_companies movie_keyword title)
 MergeJoin(movie_keyword title)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info (movie_companies (movie_keyword title)))) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.imdb_index>0;

