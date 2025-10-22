/*+ HashJoin(movie_info movie_companies movie_info_idx title cast_info)
 MergeJoin(movie_companies movie_info_idx title cast_info)
 HashJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_info (movie_companies (movie_info_idx (title cast_info))))) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order>2 and movie_companies.company_type_id=1 and title.phonetic_code<6494;

