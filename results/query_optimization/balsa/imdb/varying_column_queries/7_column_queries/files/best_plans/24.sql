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
select count(*) from movie_keyword,movie_info_idx,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>335 and movie_info_idx.info_type_id=100 and movie_companies.company_type_id>1 and title.phonetic_code>3655 and title.imdb_index>0 and title.production_year>114 and title.season_nr=0;

