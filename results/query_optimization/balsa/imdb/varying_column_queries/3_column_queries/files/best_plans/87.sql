/*+ MergeJoin(movie_keyword movie_companies movie_info_idx title cast_info)
 MergeJoin(movie_companies movie_info_idx title cast_info)
 HashJoin(movie_info_idx title cast_info)
 HashJoin(title cast_info)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(title)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_companies (movie_info_idx (title cast_info))))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.phonetic_code<19066 and title.season_nr<1;

