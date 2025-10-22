/*+ HashJoin(movie_info movie_keyword movie_companies title cast_info)
 HashJoin(movie_keyword movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (movie_companies (title cast_info))))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and title.series_years>0 and title.season_nr<1;

