/*+ NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.series_years>0;

