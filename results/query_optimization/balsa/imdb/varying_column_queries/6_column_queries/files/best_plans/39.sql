/*+ NestLoop(title movie_keyword movie_info_idx movie_info)
 NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((((title movie_keyword) movie_info_idx) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and movie_info_idx.info_type_id>99 and title.phonetic_code<22504 and title.imdb_index>0 and title.season_nr<4 and title.kind_id<7;

