/*+ HashJoin(title movie_info cast_info movie_companies movie_keyword)
 HashJoin(title movie_info cast_info movie_companies)
 NestLoop(title movie_info cast_info)
 HashJoin(title movie_info)
 IndexScan(title)
 SeqScan(movie_info)
 IndexScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title movie_info) cast_info) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id<9 and title.phonetic_code<10380 and title.episode_nr>0 and title.kind_id>1;

