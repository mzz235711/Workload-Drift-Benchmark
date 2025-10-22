/*+ NestLoop(title movie_info_idx movie_info)
 MergeJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.production_year<123 and title.imdb_index=0 and title.season_nr=0 and title.phonetic_code>0;

