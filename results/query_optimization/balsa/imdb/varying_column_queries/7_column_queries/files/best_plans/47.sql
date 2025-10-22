/*+ NestLoop(title movie_info_idx movie_keyword movie_companies movie_info)
 MergeJoin(title movie_info_idx movie_keyword movie_companies)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id<98 and movie_companies.company_type_id>1 and movie_keyword.keyword_id>229 and title.episode_nr>0 and title.production_year<122 and title.phonetic_code<14088;

