/*+ HashJoin(title movie_info_idx movie_companies movie_info movie_keyword)
 HashJoin(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title movie_info_idx) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_companies,movie_info,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>1 and title.imdb_index=0 and title.phonetic_code<18117;

