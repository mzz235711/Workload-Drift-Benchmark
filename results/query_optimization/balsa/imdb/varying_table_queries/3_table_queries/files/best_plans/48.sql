/*+ NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.production_year<126;

