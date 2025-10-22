/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.series_years>0 and title.production_year<121 and title.phonetic_code<11760;

