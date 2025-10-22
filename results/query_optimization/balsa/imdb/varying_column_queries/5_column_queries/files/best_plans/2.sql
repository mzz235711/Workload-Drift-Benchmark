/*+ NestLoop(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((title movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and title.kind_id<7 and title.phonetic_code<18237 and title.series_years>0 and title.season_nr=0;

