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
select count(*) from movie_companies,movie_info,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and cast_info.nr_order<58 and title.series_years>0;

