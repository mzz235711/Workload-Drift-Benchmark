/*+ NestLoop(movie_info_idx title movie_info cast_info movie_keyword)
 NestLoop(movie_info_idx title movie_info cast_info)
 NestLoop(movie_info_idx title movie_info)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) cast_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.series_years>1236 and title.phonetic_code<221 and title.imdb_index>0;

