/*+ HashJoin(movie_info cast_info movie_companies title movie_info_idx)
 MergeJoin(cast_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_info_idx,cast_info,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>1 and title.kind_id>1;

