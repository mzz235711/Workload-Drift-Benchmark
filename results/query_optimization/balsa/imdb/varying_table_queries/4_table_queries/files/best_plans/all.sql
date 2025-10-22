/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and cast_info.nr_order>0 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and movie_info_idx.info_type_id=99 and cast_info.role_id>1 and title.kind_id<7;

/*+ HashJoin(movie_info cast_info title movie_companies)
 HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<107 and cast_info.nr_order>0 and title.episode_nr<2004;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<94 and title.season_nr=0 and title.production_year>122 and title.kind_id=1;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and title.episode_nr>0;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from movie_info_idx,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.phonetic_code>0 and title.production_year<124;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and title.episode_nr<3322 and title.imdb_index>0;

/*+ NestLoop(movie_keyword title cast_info movie_info)
 NestLoop(movie_keyword title cast_info)
 MergeJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword title) cast_info) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id=4 and title.series_years>0;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>137 and title.production_year<99;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_companies,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.production_year>56 and title.kind_id=7 and title.series_years<1400;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.kind_id<7;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 MergeJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>3 and title.production_year<126;

/*+ HashJoin(cast_info movie_keyword title movie_companies)
 MergeJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and cast_info.role_id=3 and movie_keyword.keyword_id<14210 and title.phonetic_code<11301;

/*+ HashJoin(cast_info title movie_info_idx movie_info)
 HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading(((cast_info (title movie_info_idx)) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=101 and movie_info.info_type_id<16 and title.phonetic_code<20834;

/*+ NestLoop(title movie_info_idx movie_info cast_info)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_info) cast_info)) */
select count(*) from movie_info,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id>99 and title.imdb_index=0 and title.season_nr=1 and title.production_year<126;

/*+ HashJoin(movie_info cast_info title movie_companies)
 HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.kind_id>1;

/*+ HashJoin(movie_info cast_info title movie_companies)
 HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and title.phonetic_code<16284;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and title.kind_id=7;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=1 and title.phonetic_code<16614 and title.series_years>0 and title.production_year>82;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=99 and title.kind_id=1 and title.imdb_index>0;

/*+ NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_companies title) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and title.production_year>113 and title.kind_id<7 and title.series_years>0 and title.season_nr<11;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 MergeJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
select count(*) from cast_info,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and title.production_year>55 and title.phonetic_code<14563 and title.series_years<1296;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id>6299 and title.episode_nr>0 and title.phonetic_code<20957 and title.season_nr>0;

/*+ NestLoop(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from cast_info,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<18 and title.series_years>0 and title.phonetic_code>0 and title.kind_id<7;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code>1970 and title.episode_nr<13 and title.season_nr>0;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<71602 and title.episode_nr>0;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and cast_info.role_id=1 and title.episode_nr>0 and title.phonetic_code>0;

/*+ MergeJoin(movie_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_info_idx (title movie_companies)))) */
select count(*) from movie_info_idx,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.production_year<127;

/*+ MergeJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<17 and cast_info.role_id>1 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>52 and cast_info.role_id>3 and movie_info_idx.info_type_id>99 and title.series_years>0;

/*+ HashJoin(cast_info title movie_keyword movie_info)
 MergeJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((cast_info (title movie_keyword)) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>11 and cast_info.role_id=2 and title.production_year<94;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id>309 and title.production_year<127 and title.series_years>0 and title.phonetic_code<19371;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id=10 and movie_keyword.keyword_id>1 and title.phonetic_code<13304 and title.production_year<118;

/*+ NestLoop(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>348 and movie_info.info_type_id>2 and title.episode_nr>0 and title.series_years>0 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<31218 and movie_companies.company_type_id>1 and title.episode_nr>0;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>56 and title.season_nr>0;

/*+ NestLoop(movie_keyword title cast_info movie_info)
 NestLoop(movie_keyword title cast_info)
 MergeJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword title) cast_info) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id=1 and title.series_years>0 and title.production_year>73 and title.season_nr>0;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>0 and title.season_nr<4 and title.imdb_index=0 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and title.kind_id>1 and title.season_nr>0 and title.phonetic_code>6554 and title.production_year>118;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.kind_id>1 and title.phonetic_code<16929 and title.episode_nr<1383;

/*+ NestLoop(title movie_keyword movie_companies movie_info)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<18 and movie_companies.company_type_id<2 and title.season_nr<3 and title.series_years>0 and title.kind_id<7;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.season_nr<1 and title.kind_id<7;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<104 and movie_info_idx.info_type_id=99 and movie_companies.company_type_id<2 and title.phonetic_code<18385 and title.season_nr=0 and title.production_year>124 and title.series_years>0;

/*+ HashJoin(title cast_info movie_keyword movie_info)
 HashJoin(title cast_info movie_keyword)
 HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<20 and movie_keyword.keyword_id>382 and title.phonetic_code<13058;

/*+ NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_companies title) cast_info) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_info.info_type_id<98 and title.imdb_index>0 and title.phonetic_code>14082;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<7281 and movie_info_idx.info_type_id>99 and title.imdb_index=2 and title.production_year>125 and title.phonetic_code>1454;

/*+ NestLoop(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.episode_nr<7 and title.phonetic_code>20996 and title.season_nr>4;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<106 and movie_companies.company_type_id<2 and title.phonetic_code>10150 and title.kind_id<7 and title.season_nr<2 and title.production_year<104;

/*+ NestLoop(movie_companies title movie_keyword cast_info)
 NestLoop(movie_companies title movie_keyword)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((movie_companies title) movie_keyword) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=2 and cast_info.nr_order>1 and title.kind_id>1 and title.phonetic_code<16924 and title.imdb_index>0;

/*+ NestLoop(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and title.imdb_index>1;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id>1 and title.kind_id=2;

/*+ NestLoop(title movie_info_idx movie_keyword movie_companies)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((((title movie_info_idx) movie_keyword) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=100 and movie_keyword.keyword_id>8567 and title.season_nr=5;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id<78100 and movie_companies.company_type_id>1 and title.imdb_index=0 and title.season_nr>0 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and title.phonetic_code<19429 and title.season_nr>0;

/*+ HashJoin(movie_info cast_info title movie_companies)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from cast_info,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and movie_companies.company_type_id>1 and title.production_year<126;

/*+ HashJoin(movie_keyword title movie_companies cast_info)
 MergeJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 Leading(((movie_keyword (title movie_companies)) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<8 and title.episode_nr>0;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and cast_info.role_id<10 and title.series_years>0 and title.phonetic_code>0;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>359 and movie_companies.company_type_id<2 and title.series_years>0 and title.production_year<122;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>355 and cast_info.role_id<10 and title.episode_nr>0 and title.phonetic_code<14777;

/*+ NestLoop(title movie_keyword movie_companies movie_info)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<103 and movie_companies.company_type_id<2 and title.series_years>0 and title.production_year<122 and title.imdb_index>0 and title.phonetic_code>5789;

/*+ HashJoin(movie_keyword title cast_info movie_info)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((movie_keyword ((title cast_info) movie_info))) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>382 and title.episode_nr>0 and title.production_year<88;

/*+ NestLoop(movie_info_idx title movie_keyword cast_info)
 MergeJoin(movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((movie_info_idx title) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<80040 and movie_info_idx.info_type_id=101 and cast_info.nr_order>0 and title.series_years>0 and title.phonetic_code<8047 and title.episode_nr<5 and title.production_year>88;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<59254 and movie_companies.company_type_id=1 and title.phonetic_code>22281 and title.episode_nr>0;

/*+ MergeJoin(movie_info_idx title movie_companies movie_keyword)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((movie_info_idx title) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<116226 and title.imdb_index=0;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 MergeJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
select count(*) from cast_info,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id>1 and title.episode_nr>0;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>117 and cast_info.role_id<10 and title.kind_id>1 and title.phonetic_code>16541;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from cast_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id<10 and title.kind_id>1 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and title.episode_nr<44 and title.imdb_index=0 and title.season_nr=0 and title.phonetic_code>0;

/*+ NestLoop(movie_keyword title cast_info movie_info)
 MergeJoin(movie_keyword title cast_info)
 MergeJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword title) cast_info) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.season_nr=0 and title.kind_id<7 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_info cast_info)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and title.production_year<102 and title.series_years>0 and title.kind_id>1 and title.season_nr=0;

/*+ NestLoop(title movie_companies movie_info cast_info)
 NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_info) cast_info)) */
select count(*) from cast_info,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.kind_id=7 and title.episode_nr<5486 and title.season_nr<24;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.series_years>0 and title.imdb_index>0;

/*+ HashJoin(cast_info title movie_info_idx movie_info)
 HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading(((cast_info (title movie_info_idx)) movie_info)) */
select count(*) from cast_info,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<2000 and title.series_years>0 and title.production_year>83;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and title.episode_nr>0;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>2 and title.season_nr>0;

/*+ NestLoop(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id=2 and title.episode_nr>0 and title.phonetic_code>16708 and title.production_year<99;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>1 and title.phonetic_code<7746;

/*+ MergeJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<18 and cast_info.role_id=9 and title.phonetic_code>6741;

/*+ NestLoop(title movie_info_idx movie_info cast_info)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<16 and title.series_years<416 and title.imdb_index>0 and title.season_nr=0 and title.production_year>76;

/*+ HashJoin(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 SeqScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<63 and movie_keyword.keyword_id<4960 and title.imdb_index=0 and title.kind_id>1 and title.production_year<118 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_info movie_keyword)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=99 and movie_info.info_type_id<16 and title.episode_nr<211 and title.production_year>82 and title.series_years<1057 and title.imdb_index=0;

/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.kind_id<7 and title.imdb_index>0;

/*+ HashJoin(movie_info cast_info title movie_companies)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.production_year<129 and title.season_nr<1;

/*+ HashJoin(cast_info movie_keyword title movie_companies)
 MergeJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_keyword (title movie_companies)))) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>52 and movie_companies.company_type_id<2 and title.season_nr>0;

/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and title.season_nr=9;

/*+ HashJoin(movie_keyword title movie_companies movie_info)
 MergeJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((movie_keyword (title movie_companies)) movie_info)) */
select count(*) from movie_companies,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>3 and title.phonetic_code<63;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>3 and movie_info.info_type_id>5 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>137 and movie_info.info_type_id>1 and title.production_year<123 and title.season_nr>0 and title.kind_id>4;

/*+ MergeJoin(movie_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((movie_info ((movie_info_idx title) movie_companies))) */
select count(*) from movie_info_idx,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id<98 and title.phonetic_code<16652 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_info cast_info)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code>10577 and title.imdb_index>0 and title.production_year<108;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.kind_id<7 and title.phonetic_code<13105 and title.imdb_index>0 and title.season_nr<2;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 MergeJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.production_year<125;

/*+ NestLoop(title movie_keyword movie_companies movie_info)
 NestLoop(title movie_keyword movie_companies)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>0 and title.production_year>56 and title.imdb_index>0;

/*+ HashJoin(cast_info title movie_companies movie_info)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((cast_info (title movie_companies)) movie_info)) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.season_nr>0 and title.imdb_index=0;

/*+ NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_companies title) cast_info) movie_info)) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and cast_info.role_id>1 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and title.episode_nr>0 and title.production_year>91;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<78213 and title.kind_id>1;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>1289 and movie_companies.company_type_id=2 and title.phonetic_code<1598 and title.imdb_index=0 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>2 and title.series_years>0 and title.production_year<125;

/*+ HashJoin(cast_info title movie_info_idx movie_info)
 NestLoop(title movie_info_idx movie_info)
 HashJoin(title movie_info_idx)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading((cast_info ((title movie_info_idx) movie_info))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.kind_id=7 and title.phonetic_code>0 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_info movie_keyword)
 NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.series_years<1347 and title.kind_id>1 and title.episode_nr<130 and title.season_nr<7;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=99 and title.episode_nr>0 and title.production_year<120;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_companies,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.phonetic_code<15910;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.imdb_index=0;

/*+ HashJoin(cast_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.phonetic_code>0;

/*+ HashJoin(cast_info title movie_keyword movie_info)
 MergeJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((cast_info (title movie_keyword)) movie_info)) */
select count(*) from movie_info,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and title.phonetic_code<1094 and title.kind_id>1;

/*+ HashJoin(title cast_info movie_keyword movie_info)
 HashJoin(title cast_info movie_keyword)
 HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_keyword) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id<9 and movie_info.info_type_id>2 and title.season_nr<14;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.production_year>121;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and movie_info_idx.info_type_id>99 and title.phonetic_code<22504 and title.imdb_index>0 and title.season_nr<4 and title.kind_id<7;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from movie_info_idx,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.episode_nr<13;

/*+ MergeJoin(movie_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((movie_info ((movie_info_idx title) movie_companies))) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and title.production_year>0;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.episode_nr>0 and title.phonetic_code>0 and title.imdb_index=0 and title.kind_id=7;

/*+ NestLoop(title movie_keyword movie_info cast_info)
 NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info) cast_info)) */
select count(*) from cast_info,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.episode_nr>0 and title.production_year<126 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.season_nr=1;

/*+ NestLoop(movie_companies title cast_info movie_info)
 NestLoop(movie_companies title cast_info)
 MergeJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_companies title) cast_info) movie_info)) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<89 and title.episode_nr<11728 and title.series_years>0 and title.production_year>67 and title.phonetic_code>0;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<113718 and cast_info.role_id<9 and title.phonetic_code>570 and title.season_nr<1;

/*+ HashJoin(movie_info cast_info title movie_companies)
 MergeJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>1 and movie_info.info_type_id<16 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and title.kind_id<7;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and title.production_year>0;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_companies,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<18 and title.kind_id<7;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.imdb_index>0 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.series_years>0 and title.phonetic_code<21021 and title.season_nr<2 and title.production_year<127;

/*+ HashJoin(movie_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 MergeJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.season_nr<8 and title.production_year>41;

/*+ HashJoin(title movie_companies cast_info movie_keyword)
 HashJoin(title movie_companies cast_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 Leading((((title movie_companies) cast_info) movie_keyword)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.imdb_index=0 and title.production_year>78;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id>2488 and title.imdb_index>0;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_keyword,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<18575 and cast_info.role_id>1 and movie_info_idx.info_type_id>99 and title.phonetic_code>9436 and title.kind_id=1;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<61693 and movie_companies.company_type_id>1 and movie_info.info_type_id>2 and title.imdb_index=0 and title.production_year<127;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and title.imdb_index=0 and title.kind_id>1;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_keyword,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.production_year<112 and title.imdb_index=0 and title.episode_nr<1;

/*+ NestLoop(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and cast_info.nr_order<22 and title.season_nr>6;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id>1 and title.production_year>60 and title.phonetic_code<11312;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id<45389 and title.production_year>122;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.production_year>77 and title.episode_nr>0;

/*+ NestLoop(movie_keyword title cast_info movie_info)
 NestLoop(movie_keyword title cast_info)
 MergeJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword title) cast_info) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and cast_info.role_id=4 and title.season_nr=0 and title.series_years>0;

/*+ HashJoin(cast_info title movie_companies movie_info)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((cast_info (title movie_companies)) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.role_id=2 and title.kind_id<7 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<105 and movie_info_idx.info_type_id>99 and title.series_years>0;

/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and movie_info.info_type_id<18 and title.season_nr>0 and title.phonetic_code>11797 and title.episode_nr>0;

/*+ MergeJoin(movie_info movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info ((movie_info_idx title) movie_keyword))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.kind_id<4;

/*+ NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=10 and title.season_nr=0 and title.production_year<122 and title.phonetic_code<2008;

/*+ HashJoin(movie_info cast_info title movie_keyword)
 HashJoin(cast_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info (cast_info (title movie_keyword)))) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<17 and cast_info.role_id=8 and title.kind_id=1;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code<16933 and title.kind_id=4;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and cast_info.nr_order>1 and title.season_nr=1 and title.episode_nr<28 and title.production_year<124;

/*+ NestLoop(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from cast_info,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>1435 and title.production_year>94 and title.imdb_index>0;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<101914 and cast_info.role_id>1 and title.episode_nr>0 and title.phonetic_code<167;

/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>2 and title.episode_nr<21 and title.series_years>0 and title.production_year<126 and title.kind_id<7;

/*+ NestLoop(movie_info_idx title cast_info movie_info)
 NestLoop(movie_info_idx title cast_info)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and title.phonetic_code>10608 and title.production_year<100;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from cast_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.production_year>25 and title.phonetic_code>15820;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_info_idx,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=1 and movie_companies.company_type_id<2 and title.kind_id<7 and title.imdb_index>0 and title.production_year>80 and title.episode_nr<26;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<16 and title.production_year>120 and title.imdb_index=0 and title.season_nr=1;

/*+ MergeJoin(movie_info title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((movie_info ((title movie_info_idx) movie_keyword))) */
select count(*) from movie_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<106 and title.kind_id<7 and title.phonetic_code>0;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<41 and movie_keyword.keyword_id>47 and title.imdb_index>0;

/*+ NestLoop(title movie_info movie_keyword cast_info)
 NestLoop(title movie_info movie_keyword)
 NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info) movie_keyword) cast_info)) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.season_nr=12;

/*+ HashJoin(movie_keyword title cast_info movie_info)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((movie_keyword ((title cast_info) movie_info))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code>0 and title.season_nr>1 and title.episode_nr<2;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<18 and title.production_year<97 and title.kind_id=7 and title.imdb_index=0;

/*+ NestLoop(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from movie_companies,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id<103 and title.production_year<110 and title.series_years>0;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and title.phonetic_code>5141 and title.series_years<1366 and title.kind_id<2;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.episode_nr>0;

/*+ HashJoin(movie_keyword title cast_info movie_info)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((movie_keyword ((title cast_info) movie_info))) */
select count(*) from movie_keyword,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<87329 and movie_info.info_type_id<108 and title.phonetic_code<18250 and title.series_years>0;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<18 and title.kind_id<7;

/*+ MergeJoin(cast_info movie_info_idx title movie_info)
 NestLoop(movie_info_idx title movie_info)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((cast_info ((movie_info_idx title) movie_info))) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and title.phonetic_code>0 and title.episode_nr>0 and title.season_nr>0 and title.production_year>75;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 MergeJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<16 and cast_info.role_id<9 and title.production_year<121 and title.kind_id>4;

/*+ HashJoin(movie_info movie_keyword title movie_companies)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (movie_keyword (title movie_companies)))) */
select count(*) from movie_keyword,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<98 and title.kind_id=7;

/*+ HashJoin(cast_info title movie_companies movie_info)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((cast_info (title movie_companies)) movie_info)) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.imdb_index=0 and title.episode_nr>1;

/*+ MergeJoin(cast_info movie_companies title movie_keyword)
 NestLoop(movie_companies title movie_keyword)
 MergeJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info ((movie_companies title) movie_keyword))) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>381 and title.season_nr<3 and title.production_year<88 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.kind_id>1 and title.series_years>0;

/*+ HashJoin(movie_keyword title cast_info movie_info)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((movie_keyword ((title cast_info) movie_info))) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<59592 and title.series_years>0;

/*+ HashJoin(movie_keyword title movie_companies movie_info)
 MergeJoin(movie_keyword title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((movie_keyword (title movie_companies)) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.season_nr=0 and title.production_year>91;

/*+ HashJoin(cast_info title movie_companies movie_keyword)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((cast_info (title movie_companies)) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<101 and title.kind_id=1 and title.phonetic_code<19106;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.production_year<126 and title.kind_id>1 and title.phonetic_code>0 and title.season_nr=0;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>359 and title.production_year<118;

/*+ MergeJoin(movie_info_idx title movie_companies cast_info)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 SeqScan(cast_info)
 Leading((((movie_info_idx title) movie_companies) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=8 and title.production_year<119 and title.kind_id<7 and title.phonetic_code>2073 and title.imdb_index=0;

/*+ HashJoin(movie_info cast_info title movie_companies)
 HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<32 and title.series_years<987 and title.imdb_index=0 and title.kind_id<7;

/*+ MergeJoin(cast_info movie_companies movie_info_idx title)
 MergeJoin(movie_companies movie_info_idx title)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_companies (movie_info_idx title)))) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.episode_nr<181;

/*+ MergeJoin(movie_info_idx title movie_keyword movie_info)
 MergeJoin(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.kind_id=1;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id>117 and title.phonetic_code>13431 and title.series_years>0 and title.production_year>105;

/*+ NestLoop(movie_companies movie_info_idx title cast_info)
 MergeJoin(movie_companies movie_info_idx title)
 MergeJoin(movie_info_idx title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(cast_info)
 Leading(((movie_companies (movie_info_idx title)) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.production_year<102 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_keyword movie_companies)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((((title movie_info_idx) movie_keyword) movie_companies)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and title.production_year>100 and title.episode_nr>0 and title.kind_id>1 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_keyword cast_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_keyword) cast_info)) */
select count(*) from movie_keyword,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<121958 and movie_info_idx.info_type_id>99 and title.imdb_index>0;

/*+ NestLoop(title movie_info_idx movie_companies cast_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((((title movie_info_idx) movie_companies) cast_info)) */
select count(*) from movie_info_idx,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id=1 and title.episode_nr<8 and title.phonetic_code>20409 and title.kind_id<7 and title.production_year<120;

/*+ HashJoin(title cast_info movie_companies movie_info)
 HashJoin(title cast_info movie_companies)
 HashJoin(title cast_info)
 IndexScan(title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_companies) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.series_years<1347;

/*+ NestLoop(title movie_keyword movie_info_idx cast_info)
 NestLoop(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 IndexScan(cast_info)
 Leading((((title movie_keyword) movie_info_idx) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<21 and movie_info_idx.info_type_id>99 and movie_keyword.keyword_id<80928 and title.season_nr>0 and title.production_year<48;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_info_idx.info_type_id=100 and title.phonetic_code<1145;

/*+ HashJoin(movie_keyword title movie_info_idx cast_info)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(cast_info)
 Leading(((movie_keyword (title movie_info_idx)) cast_info)) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>2 and title.episode_nr<159 and title.phonetic_code<18557 and title.season_nr<13;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx)
 MergeJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_keyword (title movie_info_idx)))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<5 and title.kind_id=7 and title.production_year<126;

/*+ HashJoin(title cast_info movie_keyword movie_info)
 HashJoin(title cast_info movie_keyword)
 HashJoin(title cast_info)
 SeqScan(title)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title cast_info) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.production_year<118;

/*+ HashJoin(movie_info cast_info title movie_companies)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.kind_id=7 and title.phonetic_code<22520;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_keyword,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.season_nr>3 and title.production_year>125 and title.episode_nr<22 and title.phonetic_code<3117;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.kind_id>2;

/*+ HashJoin(movie_keyword title cast_info movie_info)
 NestLoop(title cast_info movie_info)
 NestLoop(title cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((movie_keyword ((title cast_info) movie_info))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.series_years>0 and title.imdb_index=0;

/*+ NestLoop(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.imdb_index=0 and title.season_nr=0 and title.series_years>1010 and title.phonetic_code>8977;

/*+ HashJoin(movie_info cast_info title movie_info_idx)
 MergeJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((movie_info (cast_info (title movie_info_idx)))) */
select count(*) from movie_info,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.kind_id>1 and title.production_year<125 and title.episode_nr<11 and title.phonetic_code<21428;

/*+ MergeJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<107 and title.kind_id<7 and title.series_years>0;

/*+ NestLoop(title movie_companies movie_keyword cast_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading((((title movie_companies) movie_keyword) cast_info)) */
select count(*) from cast_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and title.production_year<125 and title.episode_nr>0;

/*+ MergeJoin(cast_info movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((cast_info ((movie_info_idx title) movie_companies))) */
select count(*) from cast_info,movie_info_idx,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<68 and movie_info_idx.info_type_id>99 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id>231 and title.kind_id>1;

/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and title.season_nr>0 and title.phonetic_code<11367;

