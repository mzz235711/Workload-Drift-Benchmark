/*+ NestLoop(movie_info_idx title movie_companies movie_info movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_companies) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.phonetic_code>20505 and title.kind_id=7;

