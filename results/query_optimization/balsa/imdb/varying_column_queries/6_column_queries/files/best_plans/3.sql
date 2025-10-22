/*+ NestLoop(title movie_companies movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id<2 and title.kind_id=7 and title.phonetic_code<2554 and title.production_year<125 and title.season_nr<1;

