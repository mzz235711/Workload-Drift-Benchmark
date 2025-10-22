/*+ NestLoop(movie_companies title movie_info_idx movie_info)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((((movie_companies title) movie_info_idx) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.season_nr=1;

