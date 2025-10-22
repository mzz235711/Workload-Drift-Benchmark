/*+ HashJoin(movie_info_idx title movie_companies movie_keyword movie_info)
 HashJoin(movie_info_idx title movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_companies)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=2 and title.kind_id>1 and title.season_nr<19;

