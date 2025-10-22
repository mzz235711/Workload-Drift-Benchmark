/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.season_nr<7 and title.phonetic_code>0 and title.series_years>0 and title.kind_id<7;

