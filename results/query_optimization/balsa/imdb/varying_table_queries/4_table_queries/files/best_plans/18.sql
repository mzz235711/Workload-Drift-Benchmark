/*+ NestLoop(title movie_info_idx movie_info cast_info)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code>10577 and title.imdb_index>0 and title.production_year<108;

