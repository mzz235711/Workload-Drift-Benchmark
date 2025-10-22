/*+ NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading(((title movie_info_idx) movie_companies)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.season_nr>0;

