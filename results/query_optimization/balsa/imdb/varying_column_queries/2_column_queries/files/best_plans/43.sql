/*+ HashJoin(movie_info cast_info movie_companies title movie_info_idx)
 HashJoin(cast_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (movie_companies (title movie_info_idx))))) */
select count(*) from cast_info,movie_companies,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<26 and title.series_years>0;

