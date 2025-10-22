/*+ HashJoin(movie_info movie_info_idx movie_companies title cast_info)
 MergeJoin(movie_info_idx movie_companies title cast_info)
 HashJoin(movie_companies title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_info_idx (movie_companies (title cast_info))))) */
select count(*) from movie_companies,movie_info,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=1 and cast_info.role_id=1 and title.phonetic_code>11161;

