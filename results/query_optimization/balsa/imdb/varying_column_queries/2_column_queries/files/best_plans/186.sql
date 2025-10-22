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
select count(*) from movie_info,cast_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.kind_id=7 and title.series_years>0;

