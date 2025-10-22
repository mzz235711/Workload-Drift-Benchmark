/*+ HashJoin(movie_info_idx title movie_companies movie_info movie_keyword)
 HashJoin(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>3 and movie_companies.company_type_id>1 and title.season_nr=0 and title.kind_id=1 and title.production_year>0 and title.phonetic_code<16649;

