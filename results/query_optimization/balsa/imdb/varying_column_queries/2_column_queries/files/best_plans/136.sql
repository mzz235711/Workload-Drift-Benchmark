/*+ MergeJoin(movie_info movie_companies movie_keyword title)
 HashJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info (movie_companies (movie_keyword title)))) */
select count(*) from movie_companies,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and title.production_year<126;

