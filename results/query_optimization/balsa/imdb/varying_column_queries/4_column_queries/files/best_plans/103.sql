/*+ HashJoin(cast_info movie_companies movie_info title movie_info_idx)
 HashJoin(movie_companies movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_info (title movie_info_idx))))) */
select count(*) from movie_companies,cast_info,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id>99 and title.season_nr<6 and title.episode_nr>14;

