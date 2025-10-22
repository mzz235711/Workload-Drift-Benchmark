/*+ HashJoin(cast_info movie_info_idx movie_companies movie_keyword title)
 HashJoin(movie_info_idx movie_companies movie_keyword title)
 MergeJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_companies (movie_keyword title))))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and title.kind_id<7 and title.production_year<125 and title.series_years>0;

