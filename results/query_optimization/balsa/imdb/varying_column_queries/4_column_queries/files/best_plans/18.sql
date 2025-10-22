/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_companies) movie_info))) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and cast_info.nr_order<55 and movie_companies.company_type_id=1 and title.phonetic_code<12235;

