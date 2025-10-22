/*+ NestLoop(title movie_info_idx cast_info movie_keyword)
 NestLoop(title movie_info_idx cast_info)
 HashJoin(title movie_info_idx)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(cast_info)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) cast_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<39502 and cast_info.nr_order>2 and title.production_year>85 and title.kind_id>1 and title.phonetic_code<6496 and title.imdb_index>0;

