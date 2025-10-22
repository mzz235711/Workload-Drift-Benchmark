/*+ NestLoop(title movie_companies movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id>7 and movie_companies.company_type_id=2 and title.production_year<73 and title.phonetic_code>3667 and title.season_nr>0;

