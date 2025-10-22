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
select count(*) from movie_companies,movie_info,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id<108 and movie_keyword.keyword_id<61121 and title.imdb_index=0 and title.phonetic_code<1266 and title.episode_nr>0 and title.production_year>122;

