/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<73464 and movie_info_idx.info_type_id>99 and movie_info.info_type_id<106 and title.phonetic_code>1196 and title.production_year>116 and title.kind_id=1;

