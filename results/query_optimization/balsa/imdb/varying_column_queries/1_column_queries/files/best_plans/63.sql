/*+ HashJoin(cast_info movie_info movie_companies title movie_info_idx)
 MergeJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 MergeJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_companies,cast_info,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.production_year>18;

