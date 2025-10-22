/*+ HashJoin(cast_info movie_companies title movie_info_idx movie_info)
 HashJoin(movie_companies title movie_info_idx movie_info)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((cast_info ((movie_companies (title movie_info_idx)) movie_info))) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>5193;

