/*+ HashJoin(movie_info movie_keyword movie_companies title cast_info)
 MergeJoin(movie_keyword movie_companies title cast_info)
 MergeJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword (movie_companies (title cast_info))))) */
select count(*) from movie_companies,cast_info,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<16 and title.season_nr=1;

