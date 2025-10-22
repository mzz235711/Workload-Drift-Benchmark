/*+ NestLoop(title movie_companies movie_keyword movie_info_idx cast_info)
 NestLoop(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) cast_info)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>1 and title.production_year<122 and title.phonetic_code<12167 and title.episode_nr>0;

