/*+ NestLoop(title movie_companies movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_info,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<104 and movie_keyword.keyword_id>240 and title.series_years>0 and title.kind_id>1 and title.phonetic_code<1318 and title.season_nr=0;

