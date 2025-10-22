/*+ HashJoin(cast_info movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx (movie_companies title))))) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<18 and movie_companies.company_type_id=2 and title.production_year>70 and title.series_years>0;

