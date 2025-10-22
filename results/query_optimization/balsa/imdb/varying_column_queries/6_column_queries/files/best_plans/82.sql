/*+ NestLoop(title movie_companies movie_keyword movie_info_idx movie_info)
 NestLoop(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<83549 and movie_info.info_type_id<98 and movie_info_idx.info_type_id=101 and title.series_years>0 and title.phonetic_code>4227 and title.kind_id>1;

