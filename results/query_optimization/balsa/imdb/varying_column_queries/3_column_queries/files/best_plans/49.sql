/*+ MergeJoin(movie_keyword movie_companies movie_info_idx title cast_info)
 HashJoin(movie_companies movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title cast_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_companies (movie_info_idx (title cast_info))))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id<2 and title.phonetic_code>1224;

