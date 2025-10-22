/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=100 and title.episode_nr<18 and title.series_years>0;

