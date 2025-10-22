/*+ HashJoin(movie_companies movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_companies (movie_info (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.kind_id=2;

