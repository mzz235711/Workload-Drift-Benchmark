/*+ HashJoin(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.imdb_index=0 and title.phonetic_code<10056 and title.season_nr=0;

