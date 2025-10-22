/*+ HashJoin(movie_info title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((movie_info (((title movie_info_idx) movie_companies) movie_keyword))) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<121697 and title.production_year<111 and title.phonetic_code<2038 and title.season_nr<1;

