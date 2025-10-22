/*+ NestLoop(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.episode_nr>0 and title.production_year<126 and title.phonetic_code>0;

