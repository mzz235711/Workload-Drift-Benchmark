/*+ NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.series_years>1196 and title.imdb_index>0;

