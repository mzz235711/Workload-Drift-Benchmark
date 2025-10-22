/*+ HashJoin(cast_info movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx (movie_companies title))))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.role_id=10 and movie_info.info_type_id<16 and title.season_nr>1;

