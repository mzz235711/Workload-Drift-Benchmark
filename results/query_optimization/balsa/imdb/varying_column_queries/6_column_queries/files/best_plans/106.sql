/*+ NestLoop(title movie_keyword movie_info_idx cast_info)
 HashJoin(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<38 and movie_keyword.keyword_id<13000 and title.kind_id=7 and title.production_year>121 and title.phonetic_code<7803 and title.episode_nr<2;

