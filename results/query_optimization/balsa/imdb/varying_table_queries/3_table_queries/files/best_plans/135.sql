/*+ NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 Leading(((movie_info_idx title) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code<6505;

