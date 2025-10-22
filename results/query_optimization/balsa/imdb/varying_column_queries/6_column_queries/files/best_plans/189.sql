/*+ NestLoop(title movie_keyword movie_info_idx cast_info movie_info)
 NestLoop(title movie_keyword movie_info_idx cast_info)
 HashJoin(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading(((((title movie_keyword) movie_info_idx) cast_info) movie_info)) */
select count(*) from cast_info,movie_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_info_idx.info_type_id=100 and title.imdb_index=0 and title.series_years>0 and title.phonetic_code<17078 and title.production_year<117;

