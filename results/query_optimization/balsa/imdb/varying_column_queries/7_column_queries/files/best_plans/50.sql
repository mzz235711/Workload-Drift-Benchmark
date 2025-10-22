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
select count(*) from movie_companies,movie_info,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id>498 and movie_info_idx.info_type_id>99 and title.phonetic_code>3658 and title.imdb_index>0 and title.season_nr=0 and title.kind_id=1;

