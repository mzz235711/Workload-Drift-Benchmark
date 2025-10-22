/*+ HashJoin(title movie_companies movie_keyword movie_info_idx cast_info)
 HashJoin(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and cast_info.role_id>1 and title.production_year>0 and title.season_nr=0 and title.kind_id<7 and title.phonetic_code>0;

