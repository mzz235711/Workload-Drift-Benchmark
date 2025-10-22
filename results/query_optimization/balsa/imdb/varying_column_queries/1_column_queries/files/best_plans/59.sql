/*+ HashJoin(cast_info movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx (movie_companies title))))) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.series_years>0;

