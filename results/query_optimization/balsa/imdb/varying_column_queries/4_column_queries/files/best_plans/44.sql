/*+ NestLoop(movie_companies title movie_info_idx movie_info)
 MergeJoin(movie_companies title movie_info_idx)
 MergeJoin(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((movie_companies (title movie_info_idx)) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id>1 and title.production_year>60 and title.phonetic_code<11312;

