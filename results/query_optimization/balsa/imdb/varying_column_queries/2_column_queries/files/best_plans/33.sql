/*+ HashJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (movie_companies (title movie_info_idx)))) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.episode_nr<13;

