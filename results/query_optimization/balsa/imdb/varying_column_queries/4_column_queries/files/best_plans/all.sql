/*+ HashJoin(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and title.kind_id<4 and title.production_year<120 and title.phonetic_code<20495;

/*+ HashJoin(cast_info movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and cast_info.role_id<10 and movie_keyword.keyword_id>4032 and title.production_year<104;

/*+ HashJoin(movie_companies movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((movie_companies (movie_info (movie_info_idx (title movie_keyword))))) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>323 and movie_info_idx.info_type_id>99 and movie_info.info_type_id<107 and title.series_years>0;

/*+ HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_companies title))) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.kind_id=7 and title.episode_nr>0 and title.production_year<126 and title.season_nr<5;

/*+ HashJoin(cast_info movie_info movie_keyword title movie_companies)
 NestLoop(movie_info movie_keyword title movie_companies)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info (movie_keyword title)) movie_companies))) */
select count(*) from movie_companies,cast_info,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>1 and movie_info.info_type_id>1 and title.production_year>127;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from movie_info_idx,movie_keyword,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id=101 and title.season_nr<5 and title.phonetic_code>0 and title.kind_id=7;

/*+ HashJoin(cast_info movie_companies movie_info title movie_info_idx)
 HashJoin(movie_companies movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_info (title movie_info_idx))))) */
select count(*) from movie_companies,cast_info,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id>99 and title.season_nr<6 and title.episode_nr>14;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from movie_info,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id>245 and title.phonetic_code>1420 and title.series_years>0;

/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=3 and title.imdb_index=0 and title.episode_nr>0 and title.season_nr<14;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code<20985 and title.kind_id=3 and title.imdb_index>0 and title.season_nr<4;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.production_year<126 and title.episode_nr>0 and title.kind_id=7;

/*+ MergeJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_keyword (title movie_companies))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.production_year<127 and title.episode_nr>0 and title.series_years>0 and title.kind_id>1;

/*+ HashJoin(movie_info_idx movie_info title)
 HashJoin(movie_info title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info_idx (movie_info title))) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>16 and title.season_nr<2 and title.phonetic_code>19;

/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_companies) movie_info))) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and cast_info.role_id<9 and movie_companies.company_type_id>1 and title.imdb_index=0 and title.phonetic_code<14056;

/*+ HashJoin(movie_companies title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and movie_companies.company_type_id=1 and title.kind_id=3 and title.phonetic_code<17787;

/*+ HashJoin(cast_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (title movie_companies))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and title.season_nr<2 and title.phonetic_code<2382 and title.episode_nr>15;

/*+ HashJoin(cast_info title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx movie_keyword)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((cast_info (((title movie_companies) movie_info_idx) movie_keyword))) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and cast_info.nr_order>1 and movie_info_idx.info_type_id<101 and title.episode_nr>0;

/*+ HashJoin(cast_info movie_companies movie_info_idx movie_keyword title)
 HashJoin(movie_companies movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_companies (movie_info_idx (movie_keyword title))))) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.series_years>0 and title.kind_id<7 and title.imdb_index>0 and title.phonetic_code>0;

/*+ NestLoop(movie_info_idx title movie_keyword movie_info)
 NestLoop(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.imdb_index=0 and title.season_nr=4 and title.production_year<126;

/*+ HashJoin(cast_info movie_info movie_info_idx title)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx title)))) */
select count(*) from cast_info,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and title.production_year<97 and title.kind_id>1 and title.season_nr>0;

/*+ HashJoin(cast_info title movie_info movie_keyword)
 HashJoin(title movie_info movie_keyword)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 Leading((cast_info ((title movie_info) movie_keyword))) */
select count(*) from movie_info,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<94 and movie_keyword.keyword_id<65024 and title.season_nr>0 and title.production_year>31;

/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_companies) movie_info))) */
select count(*) from movie_info_idx,movie_companies,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.phonetic_code>5566 and title.kind_id>2;

/*+ HashJoin(movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info (movie_info_idx (title movie_keyword)))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.production_year<91 and title.phonetic_code>2917 and title.episode_nr<15;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.series_years>0 and title.production_year<121 and title.phonetic_code<11760;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_companies)
 NestLoop(title movie_keyword movie_info_idx movie_companies)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_companies))) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and cast_info.role_id<11 and title.phonetic_code<7860 and title.episode_nr>0;

/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.kind_id>1 and title.phonetic_code>0 and title.season_nr>0 and title.episode_nr<186;

/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>275 and title.kind_id<6 and title.series_years>0 and title.phonetic_code<1362;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code>0 and title.production_year<126 and title.imdb_index=0 and title.episode_nr<13;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.production_year<94 and title.phonetic_code<6106 and title.imdb_index=0;

/*+ HashJoin(movie_companies title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and title.production_year>84 and title.kind_id>1 and title.imdb_index>0;

/*+ NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.production_year<120 and title.imdb_index>0 and title.phonetic_code<15358;

/*+ HashJoin(movie_info title movie_info_idx movie_keyword movie_companies)
 NestLoop(title movie_info_idx movie_keyword movie_companies)
 HashJoin(title movie_info_idx movie_keyword)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((movie_info (((title movie_info_idx) movie_keyword) movie_companies))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.kind_id=7 and title.imdb_index=0 and title.episode_nr<86;

/*+ HashJoin(cast_info movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_keyword title)))) */
select count(*) from movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>117 and title.imdb_index=0 and title.series_years>0 and title.phonetic_code>17587;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from movie_info,movie_info_idx,cast_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<18 and movie_keyword.keyword_id<71422 and title.phonetic_code<5554 and title.imdb_index>0;

/*+ HashJoin(movie_info_idx movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_info_idx (movie_info (movie_companies title)))) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.series_years>0 and title.phonetic_code<21021 and title.season_nr<2 and title.production_year<127;

/*+ HashJoin(cast_info movie_info movie_info_idx title movie_companies)
 NestLoop(movie_info movie_info_idx title movie_companies)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info (movie_info_idx title)) movie_companies))) */
select count(*) from cast_info,movie_companies,movie_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id<98 and movie_info_idx.info_type_id<101 and title.production_year<81;

/*+ HashJoin(cast_info title movie_keyword movie_companies movie_info)
 HashJoin(title movie_keyword movie_companies movie_info)
 NestLoop(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_companies) movie_info))) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<16 and movie_companies.company_type_id>1 and cast_info.role_id=1 and title.episode_nr>0;

/*+ HashJoin(cast_info title movie_companies movie_info_idx movie_keyword)
 HashJoin(cast_info title movie_companies movie_info_idx)
 HashJoin(cast_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 Leading((((cast_info (title movie_companies)) movie_info_idx) movie_keyword)) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order<4100 and title.kind_id<7 and title.imdb_index>0 and title.season_nr<1;

/*+ HashJoin(movie_info movie_info_idx title movie_companies movie_keyword)
 HashJoin(movie_info movie_info_idx title movie_companies)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((movie_info (movie_info_idx title)) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>110 and movie_info.info_type_id>1 and title.series_years>0 and title.imdb_index=0;

/*+ HashJoin(cast_info movie_info movie_info_idx title)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx title)))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code>10577 and title.imdb_index>0 and title.production_year<108;

/*+ HashJoin(movie_info_idx movie_companies movie_keyword title)
 HashJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info_idx (movie_companies (movie_keyword title)))) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.imdb_index=0 and title.kind_id<7 and title.season_nr<1;

/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies movie_info)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_companies) movie_info))) */
select count(*) from movie_info,movie_companies,movie_info_idx,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<86 and movie_companies.company_type_id>1 and cast_info.nr_order>1 and title.phonetic_code>12895;

/*+ HashJoin(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_keyword,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.imdb_index=0 and title.phonetic_code<10056 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.episode_nr<4 and title.season_nr=4 and title.production_year<89;

/*+ HashJoin(cast_info movie_companies movie_info_idx movie_keyword title)
 HashJoin(movie_companies movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_companies (movie_info_idx (movie_keyword title))))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<41 and movie_companies.company_type_id=2 and movie_info_idx.info_type_id=100 and title.season_nr>0;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.kind_id<7 and title.production_year<126 and title.episode_nr<36;

/*+ NestLoop(title movie_info_idx movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_info_idx) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<33529 and movie_info.info_type_id>1 and movie_info_idx.info_type_id=100 and title.episode_nr>0;

/*+ HashJoin(cast_info movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<17 and title.series_years>0 and title.kind_id>1 and title.imdb_index>0;

/*+ HashJoin(cast_info title movie_info_idx movie_keyword movie_info)
 HashJoin(cast_info title movie_info_idx movie_keyword)
 HashJoin(cast_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((cast_info (title movie_info_idx)) movie_keyword) movie_info)) */
select count(*) from movie_keyword,cast_info,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<15 and movie_info.info_type_id>1 and title.production_year>103 and title.episode_nr>1;

/*+ HashJoin(cast_info movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_keyword (title movie_info_idx))))) */
select count(*) from cast_info,movie_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<104 and title.season_nr>1 and title.phonetic_code<14412 and title.episode_nr>8;

/*+ HashJoin(movie_companies movie_info_idx movie_info movie_keyword title)
 HashJoin(movie_info_idx movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_companies (movie_info_idx (movie_info (movie_keyword title))))) */
select count(*) from movie_keyword,movie_info_idx,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=101 and movie_info.info_type_id<16 and title.season_nr=0 and title.imdb_index>0;

/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and movie_companies.company_type_id=1 and title.kind_id=7 and title.season_nr<1;

/*+ HashJoin(cast_info movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((cast_info (movie_info title))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.episode_nr<25 and title.production_year>46 and title.kind_id<7 and title.series_years>0;

/*+ HashJoin(movie_info_idx title)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((movie_info_idx title)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.phonetic_code<16954 and title.production_year>0 and title.season_nr=1 and title.series_years<1400;

/*+ HashJoin(movie_companies movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (movie_info (movie_info_idx (title movie_keyword))))) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and title.imdb_index>0 and title.kind_id=1 and title.production_year<117;

/*+ HashJoin(title movie_keyword movie_info_idx movie_companies movie_info)
 NestLoop(title movie_keyword movie_info_idx movie_companies)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((title movie_keyword) movie_info_idx) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=1 and movie_info_idx.info_type_id=100 and title.season_nr=0 and title.production_year<74;

/*+ HashJoin(cast_info title movie_keyword movie_info movie_companies)
 NestLoop(title movie_keyword movie_info movie_companies)
 HashJoin(title movie_keyword movie_info)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 Leading((cast_info (((title movie_keyword) movie_info) movie_companies))) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and movie_info.info_type_id>1 and title.season_nr=1 and title.episode_nr<16;

/*+ HashJoin(cast_info movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from movie_companies,movie_info_idx,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id>1 and title.imdb_index>0 and title.phonetic_code>0 and title.production_year<126;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id>1 and title.season_nr=0 and title.phonetic_code>0 and title.kind_id=7;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.kind_id>1 and title.imdb_index>0 and title.production_year>91 and title.phonetic_code>0;

/*+ HashJoin(cast_info movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_keyword title)))) */
select count(*) from movie_keyword,cast_info,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_info.info_type_id<16 and title.production_year<125 and title.season_nr=2;

/*+ HashJoin(movie_info movie_info_idx title movie_keyword movie_companies)
 HashJoin(movie_info_idx title movie_keyword movie_companies)
 HashJoin(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((movie_info (movie_info_idx ((title movie_keyword) movie_companies)))) */
select count(*) from movie_info,movie_keyword,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id<116526 and movie_info_idx.info_type_id>99 and title.production_year>123 and title.kind_id>1;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.kind_id>2 and title.phonetic_code>252 and title.production_year<120;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.season_nr<7 and title.phonetic_code>0 and title.series_years>0 and title.kind_id<7;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from cast_info,movie_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_info.info_type_id<16 and title.kind_id=7 and title.phonetic_code>0;

/*+ HashJoin(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id<96975 and title.production_year<119 and title.imdb_index=0 and title.kind_id>1;

/*+ SeqScan(title)
 Leading(title) */
select count(*) from title where title.kind_id=7 and title.phonetic_code<19071 and title.production_year<127 and title.episode_nr<143;

/*+ HashJoin(movie_info movie_info_idx title movie_keyword movie_companies)
 HashJoin(movie_info_idx title movie_keyword movie_companies)
 HashJoin(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((movie_info (movie_info_idx ((title movie_keyword) movie_companies)))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.season_nr=1 and title.kind_id>1 and title.episode_nr<1112;

/*+ HashJoin(cast_info movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((cast_info (movie_info title))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code<22641 and title.episode_nr>0 and title.production_year>100;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id=2 and title.imdb_index=0 and title.episode_nr>0 and title.production_year>114;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr>0 and title.phonetic_code>0 and title.imdb_index=0 and title.season_nr>0;

/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<90726 and cast_info.nr_order>3 and title.phonetic_code<8989 and title.series_years>0;

/*+ HashJoin(cast_info title movie_companies movie_info)
 HashJoin(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info ((title movie_companies) movie_info))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id>1 and movie_info.info_type_id>16 and title.episode_nr<11;

/*+ HashJoin(cast_info movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx (movie_companies title))))) */
select count(*) from movie_info,cast_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<18 and movie_companies.company_type_id=2 and title.production_year>70 and title.series_years>0;

/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<26514 and title.season_nr>0 and title.series_years>0 and title.phonetic_code<12240;

/*+ HashJoin(cast_info movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_keyword title)))) */
select count(*) from cast_info,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=4 and movie_info_idx.info_type_id<101 and title.kind_id=7 and title.episode_nr<8;

/*+ HashJoin(title movie_info_idx movie_companies movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<98 and title.phonetic_code>17627 and title.imdb_index=0;

/*+ HashJoin(cast_info movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_companies title)))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=1 and movie_info.info_type_id>16 and title.season_nr>0 and title.production_year<118;

/*+ HashJoin(movie_companies title movie_keyword movie_info_idx)
 NestLoop(movie_companies title movie_keyword)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info_idx)
 Leading((((movie_companies title) movie_keyword) movie_info_idx)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id<101 and title.imdb_index>0 and title.kind_id=1;

/*+ HashJoin(cast_info movie_info_idx movie_keyword movie_companies title)
 HashJoin(movie_info_idx movie_keyword movie_companies title)
 HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_keyword (movie_companies title))))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order<200 and movie_info_idx.info_type_id=100 and title.phonetic_code<1610 and title.series_years>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.kind_id<7 and title.phonetic_code>0 and title.production_year>25 and title.imdb_index>0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and title.phonetic_code<14641 and title.episode_nr>0 and title.season_nr>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.episode_nr<11 and title.imdb_index=0 and title.production_year>15 and title.kind_id=7;

/*+ HashJoin(cast_info title movie_keyword movie_companies movie_info)
 HashJoin(title movie_keyword movie_companies movie_info)
 NestLoop(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_companies) movie_info))) */
select count(*) from movie_companies,cast_info,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id<41516 and title.production_year<51 and title.phonetic_code>3956;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.nr_order<23 and title.imdb_index=0 and title.production_year<126 and title.series_years>0;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.production_year<124 and title.imdb_index=0 and title.phonetic_code>0 and title.season_nr=0;

/*+ HashJoin(cast_info movie_info title movie_keyword movie_companies)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info ((title movie_keyword) movie_companies)))) */
select count(*) from cast_info,movie_companies,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id>2849 and title.kind_id>1 and title.production_year<40;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id>99 and title.production_year>125 and title.imdb_index>0 and title.kind_id>3;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.production_year>64 and title.season_nr<3 and title.series_years>0 and title.episode_nr<5632;

/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code<17864 and title.episode_nr>0 and title.series_years>0 and title.production_year<125;

/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_companies) movie_info))) */
select count(*) from movie_info,cast_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and cast_info.nr_order<55 and movie_companies.company_type_id=1 and title.phonetic_code<12235;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and title.kind_id=1 and title.imdb_index>0 and title.season_nr<2;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and movie_keyword.keyword_id<79918 and title.imdb_index>0 and title.kind_id=1;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id<101 and title.episode_nr<7 and title.imdb_index>0 and title.kind_id<7;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.imdb_index>0 and title.series_years>0 and title.production_year>122;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_keyword.keyword_id<2564 and title.series_years<1347 and title.season_nr>0;

/*+ HashJoin(movie_companies title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.phonetic_code<17985 and title.season_nr<7 and title.production_year<127 and title.series_years>0;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>373 and movie_info.info_type_id<105 and title.season_nr<17 and title.kind_id=7;

/*+ HashJoin(cast_info movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<27710 and title.imdb_index>0 and title.production_year>125 and title.phonetic_code<20662;

/*+ HashJoin(cast_info movie_info_idx movie_keyword title movie_companies)
 NestLoop(movie_info_idx movie_keyword title movie_companies)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info_idx (movie_keyword title)) movie_companies))) */
select count(*) from movie_keyword,movie_companies,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<103486 and movie_info_idx.info_type_id>99 and title.production_year<120 and title.episode_nr>1;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_info_idx,movie_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.kind_id>1 and title.production_year>94 and title.phonetic_code<10022;

/*+ HashJoin(cast_info title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_keyword movie_info_idx)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_keyword) movie_info_idx) movie_info))) */
select count(*) from cast_info,movie_info_idx,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id<17 and title.imdb_index=0 and title.phonetic_code<1129;

/*+ HashJoin(cast_info movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and movie_info_idx.info_type_id=101 and title.imdb_index=0 and title.episode_nr<155;

/*+ HashJoin(cast_info movie_companies movie_info title movie_info_idx)
 HashJoin(movie_companies movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_info (title movie_info_idx))))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and movie_info.info_type_id>4 and title.series_years>0 and title.imdb_index=0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and title.production_year<125 and title.series_years>0 and title.episode_nr<20 and title.season_nr=0;

/*+ HashJoin(cast_info movie_info movie_companies title movie_info_idx)
 HashJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=100 and cast_info.role_id>1 and title.season_nr=0 and title.production_year>112;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.kind_id>1 and title.series_years>0 and title.season_nr=0 and title.phonetic_code<22789;

/*+ HashJoin(cast_info title movie_keyword movie_companies movie_info)
 HashJoin(cast_info title movie_keyword movie_companies)
 HashJoin(cast_info title movie_keyword)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((((cast_info title) movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<18 and movie_keyword.keyword_id<16822 and title.imdb_index=0 and title.season_nr>0;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code<13363 and title.season_nr<5 and title.production_year>65 and title.imdb_index>0;

/*+ HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_info (movie_companies title))) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and title.production_year>26 and title.imdb_index=0 and title.season_nr=0;

/*+ HashJoin(movie_info title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 IndexScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading((movie_info ((title movie_info_idx) movie_companies))) */
select count(*) from movie_companies,movie_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<16 and title.production_year>32 and title.phonetic_code<20792;

/*+ HashJoin(title movie_info_idx movie_keyword movie_info cast_info)
 MergeJoin(title movie_info_idx movie_keyword movie_info)
 MergeJoin(title movie_info_idx movie_keyword)
 MergeJoin(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 SeqScan(cast_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id>99 and movie_info.info_type_id<5 and title.production_year<126 and title.series_years<1400;

/*+ HashJoin(movie_info_idx movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((movie_info_idx (movie_info (movie_companies title)))) */
select count(*) from movie_info_idx,movie_companies,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.phonetic_code<20945 and title.production_year<126 and title.series_years>0 and title.kind_id>1;

/*+ HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (title movie_info_idx))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.phonetic_code<17658 and title.imdb_index>0 and title.production_year<127 and title.kind_id<7;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.phonetic_code>0 and title.season_nr<12 and title.imdb_index=0 and title.kind_id=1;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword movie_info)
 NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((title movie_info_idx) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.production_year>87 and title.imdb_index>0 and title.kind_id>1 and title.season_nr=0;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.imdb_index>0 and title.series_years<1357 and title.season_nr<2 and title.production_year>61;

/*+ HashJoin(cast_info movie_info_idx movie_keyword movie_companies title)
 HashJoin(movie_info_idx movie_keyword movie_companies title)
 HashJoin(movie_keyword movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_keyword (movie_companies title))))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=8 and movie_companies.company_type_id>1 and title.season_nr>1 and title.imdb_index=0;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.phonetic_code>0 and title.season_nr<6 and title.production_year>111;

/*+ HashJoin(cast_info movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx (movie_companies title))))) */
select count(*) from movie_info_idx,movie_info,cast_info,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id<101 and movie_companies.company_type_id<2 and title.phonetic_code<6856 and title.production_year<43;

/*+ NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading(((title movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=2 and movie_keyword.keyword_id>1578 and title.phonetic_code>21216 and title.season_nr>0;

/*+ HashJoin(cast_info movie_info movie_companies title movie_info_idx)
 HashJoin(movie_info movie_companies title movie_info_idx)
 HashJoin(movie_companies title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_companies (title movie_info_idx))))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and title.phonetic_code>14059 and title.kind_id=1 and title.season_nr=0;

/*+ HashJoin(movie_info movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info (movie_info_idx (movie_keyword title)))) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and movie_keyword.keyword_id<18662 and title.episode_nr>0 and title.production_year>69;

/*+ HashJoin(cast_info title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((cast_info (title movie_keyword))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.kind_id=1 and title.phonetic_code>0 and title.imdb_index=0 and title.season_nr<6;

/*+ HashJoin(cast_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_companies title))) */
select count(*) from movie_companies,cast_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and cast_info.nr_order<33 and title.imdb_index=0 and title.production_year<93 and title.kind_id>1;

/*+ NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.production_year>0 and title.phonetic_code>0 and title.series_years>0 and title.season_nr<19;

/*+ HashJoin(cast_info movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_keyword,movie_info,cast_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id>335 and movie_info.info_type_id>3 and title.kind_id>1 and title.series_years>0;

/*+ HashJoin(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id=101 and title.kind_id>1 and title.production_year<126 and title.series_years>0;

/*+ HashJoin(cast_info movie_info_idx movie_keyword title movie_companies)
 NestLoop(movie_info_idx movie_keyword title movie_companies)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info_idx (movie_keyword title)) movie_companies))) */
select count(*) from cast_info,movie_companies,movie_keyword,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id<10 and movie_keyword.keyword_id<29072 and title.imdb_index>0 and title.kind_id=1;

/*+ HashJoin(cast_info movie_keyword title movie_info_idx movie_companies)
 HashJoin(movie_keyword title movie_info_idx movie_companies)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_keyword (title movie_info_idx)) movie_companies))) */
select count(*) from movie_keyword,cast_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id=1 and movie_info_idx.info_type_id<101 and title.phonetic_code<3615 and title.season_nr=0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<98 and title.phonetic_code>0 and title.season_nr<15 and title.series_years>0;

/*+ NestLoop(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.kind_id<2 and title.production_year>125 and title.imdb_index=0;

/*+ HashJoin(cast_info movie_companies movie_keyword title)
 HashJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_companies (movie_keyword title)))) */
select count(*) from cast_info,movie_companies,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and title.season_nr>0 and title.phonetic_code<20503 and title.episode_nr<12;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.season_nr>0 and title.phonetic_code>0 and title.production_year>58;

/*+ HashJoin(cast_info movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from movie_companies,cast_info,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.nr_order>1 and title.imdb_index>0 and title.production_year>79 and title.phonetic_code<16063;

/*+ HashJoin(cast_info title movie_info_idx)
 NestLoop(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((cast_info (title movie_info_idx))) */
select count(*) from movie_info_idx,cast_info,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.nr_order>1 and title.production_year<81 and title.imdb_index>0 and title.phonetic_code<4400;

/*+ HashJoin(cast_info movie_info title movie_keyword movie_companies)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info ((title movie_keyword) movie_companies)))) */
select count(*) from movie_keyword,movie_info,movie_companies,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id>181 and movie_companies.company_type_id>1 and cast_info.nr_order<100 and title.production_year<55;

/*+ HashJoin(cast_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info_idx title))) */
select count(*) from cast_info,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and cast_info.role_id>1 and movie_info_idx.info_type_id=101 and title.phonetic_code>13473 and title.kind_id=1;

/*+ NestLoop(movie_info_idx title movie_companies movie_keyword movie_info)
 NestLoop(movie_info_idx title movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading(((((movie_info_idx title) movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_companies,movie_info,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id=99 and title.season_nr>2 and title.production_year>119;

/*+ NestLoop(movie_companies title movie_info_idx movie_info)
 MergeJoin(movie_companies title movie_info_idx)
 MergeJoin(title movie_info_idx)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((movie_companies (title movie_info_idx)) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id>99 and movie_companies.company_type_id>1 and title.production_year>60 and title.phonetic_code<11312;

/*+ HashJoin(cast_info movie_companies movie_info title movie_info_idx)
 HashJoin(movie_companies movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_info (title movie_info_idx))))) */
select count(*) from movie_companies,cast_info,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id=2 and movie_info_idx.info_type_id<101 and title.phonetic_code>3902 and title.production_year>114;

/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code<22106 and title.series_years>0 and title.kind_id>1 and title.production_year>32;

/*+ HashJoin(cast_info movie_info_idx movie_keyword title movie_companies)
 NestLoop(movie_info_idx movie_keyword title movie_companies)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info ((movie_info_idx (movie_keyword title)) movie_companies))) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and cast_info.nr_order<33 and title.episode_nr<13 and title.imdb_index>0 and title.series_years>0;

/*+ MergeJoin(title movie_info_idx movie_keyword movie_companies movie_info)
 NestLoop(title movie_info_idx movie_keyword movie_companies)
 MergeJoin(title movie_info_idx movie_keyword)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((((title movie_info_idx) movie_keyword) movie_companies) movie_info)) */
select count(*) from movie_keyword,movie_info_idx,movie_info,movie_companies,title where title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_keyword.keyword_id>748 and movie_info.info_type_id>1 and movie_companies.company_type_id<2 and title.production_year<92;

/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.production_year<121 and title.kind_id=7 and title.episode_nr<15;

/*+ HashJoin(cast_info movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_keyword title)))) */
select count(*) from cast_info,movie_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>2 and movie_info.info_type_id<16 and title.production_year<124 and title.series_years>0;

/*+ MergeJoin(title movie_companies movie_info_idx movie_info movie_keyword)
 MergeJoin(title movie_companies movie_info_idx movie_info)
 MergeJoin(title movie_companies movie_info_idx)
 MergeJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 SeqScan(movie_keyword)
 Leading(((((title movie_companies) movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_info,movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=1 and movie_info_idx.info_type_id=101 and title.phonetic_code<10832;

/*+ HashJoin(movie_companies title movie_info_idx)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading(((movie_companies title) movie_info_idx)) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.imdb_index=0 and title.season_nr>0 and title.production_year>0 and title.kind_id=7;

/*+ HashJoin(cast_info title movie_companies movie_info_idx movie_keyword)
 HashJoin(cast_info title movie_companies movie_info_idx)
 HashJoin(cast_info title movie_companies)
 HashJoin(cast_info title)
 IndexScan(cast_info)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading(((((cast_info title) movie_companies) movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,cast_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<71648 and cast_info.role_id<10 and movie_companies.company_type_id<2 and title.kind_id=1;

/*+ HashJoin(movie_companies title movie_info_idx)
 HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading(((movie_companies title) movie_info_idx)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.imdb_index=0 and title.season_nr>0 and title.production_year<123;

/*+ HashJoin(cast_info movie_companies movie_info title movie_keyword)
 HashJoin(movie_companies movie_info title movie_keyword)
 HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (movie_companies (movie_info (title movie_keyword))))) */
select count(*) from movie_companies,movie_keyword,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<106 and cast_info.nr_order<37 and title.series_years>0 and title.phonetic_code<5478;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and movie_info_idx.info_type_id>99 and title.episode_nr>0 and title.imdb_index=0 and title.kind_id>4;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and movie_info.info_type_id<16 and title.kind_id<7 and title.imdb_index>0 and title.series_years>0;

/*+ HashJoin(cast_info movie_info movie_companies title movie_keyword)
 HashJoin(movie_info movie_companies title movie_keyword)
 HashJoin(movie_companies title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (movie_info (movie_companies (title movie_keyword))))) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and title.production_year>116 and title.imdb_index>1 and title.phonetic_code>5892;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and title.production_year<125 and title.episode_nr>8 and title.phonetic_code>2516;

/*+ HashJoin(movie_companies title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (title movie_keyword))) */
select count(*) from movie_companies,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.series_years<1381 and title.production_year<126 and title.kind_id>1;

/*+ HashJoin(cast_info movie_info_idx movie_keyword title)
 HashJoin(movie_info_idx movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_keyword title)))) */
select count(*) from cast_info,movie_info_idx,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_info_idx.info_type_id=101 and title.kind_id<4 and title.imdb_index=0;

/*+ HashJoin(cast_info movie_info_idx title movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_companies movie_keyword)
 HashJoin(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((cast_info (((movie_info_idx title) movie_companies) movie_keyword))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and title.phonetic_code>0 and title.imdb_index=0 and title.series_years>0;

/*+ NestLoop(title movie_info_idx movie_info)
 NestLoop(title movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((title movie_info_idx) movie_info)) */
select count(*) from movie_info_idx,movie_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.phonetic_code>1481 and title.production_year>108 and title.season_nr>0;

/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<118938 and movie_info_idx.info_type_id<101 and title.episode_nr>0 and title.production_year<70;

/*+ HashJoin(cast_info title movie_info)
 HashJoin(title movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 SeqScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from movie_info,cast_info,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.season_nr=0 and title.kind_id<7 and title.phonetic_code>0 and title.production_year>82;

/*+ HashJoin(movie_info title)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((movie_info title)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.imdb_index=0 and title.kind_id>1 and title.production_year<125 and title.season_nr<2;

/*+ HashJoin(cast_info movie_info_idx movie_companies movie_keyword title)
 HashJoin(movie_info_idx movie_companies movie_keyword title)
 MergeJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_companies (movie_keyword title))))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_companies.company_type_id<2 and title.kind_id<7 and title.production_year<125 and title.series_years>0;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
select count(*) from movie_keyword,cast_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<59192 and title.kind_id>1 and title.production_year>85 and title.imdb_index=0;

/*+ NestLoop(title movie_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((title movie_info)) */
select count(*) from movie_info,title where title.id=movie_info.movie_id and title.series_years>0 and title.production_year<124 and title.kind_id<7 and title.phonetic_code>0;

/*+ HashJoin(movie_companies title movie_info_idx)
 NestLoop(title movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((movie_companies (title movie_info_idx))) */
select count(*) from movie_info_idx,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.kind_id=7 and title.episode_nr<57 and title.imdb_index=0 and title.production_year>0;

/*+ HashJoin(cast_info movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_keyword title)))) */
select count(*) from cast_info,movie_keyword,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and cast_info.role_id=1 and title.series_years>0 and title.production_year>73 and title.season_nr>0;

/*+ HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((cast_info (movie_keyword title))) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.season_nr>0 and title.episode_nr<8944 and title.phonetic_code<16156 and title.production_year>47;

/*+ HashJoin(cast_info movie_info movie_info_idx title)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx title)))) */
select count(*) from cast_info,movie_info_idx,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id<10 and title.phonetic_code<2356 and title.series_years>0 and title.episode_nr<3;

/*+ HashJoin(cast_info movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_info movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_keyword,cast_info,movie_info_idx,movie_info,title where title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and cast_info.role_id>1 and title.phonetic_code<5172 and title.episode_nr>0 and title.production_year<127;

/*+ HashJoin(cast_info movie_info_idx movie_info title)
 HashJoin(movie_info_idx movie_info title)
 HashJoin(movie_info title)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 SeqScan(title)
 Leading((cast_info (movie_info_idx (movie_info title)))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info_idx.info_type_id<101 and movie_info.info_type_id>1 and cast_info.role_id<10 and title.kind_id=1;

/*+ NestLoop(title movie_keyword)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((title movie_keyword)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and movie_keyword.keyword_id<97682 and title.phonetic_code<7321 and title.imdb_index=0 and title.episode_nr>0;

/*+ NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((title movie_companies) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_keyword,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>1 and title.season_nr=1 and title.series_years>0 and title.production_year<126;

/*+ HashJoin(cast_info title movie_info)
 NestLoop(title movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((cast_info (title movie_info))) */
select count(*) from cast_info,movie_info,title where title.id=cast_info.movie_id and title.id=movie_info.movie_id and cast_info.nr_order<31 and title.kind_id>1 and title.series_years>0 and title.phonetic_code<16613;

/*+ HashJoin(title movie_keyword movie_info_idx)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 Leading(((title movie_keyword) movie_info_idx)) */
select count(*) from movie_info_idx,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_keyword.keyword_id>275 and title.phonetic_code>0 and title.production_year>109 and title.episode_nr<93;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id<16 and title.production_year<100 and title.episode_nr<18 and title.season_nr=15;

/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.episode_nr>0 and title.production_year>35 and title.kind_id=7 and title.imdb_index=0;

/*+ HashJoin(movie_info_idx movie_info movie_keyword title)
 HashJoin(movie_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(movie_info_idx)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_info_idx (movie_info (movie_keyword title)))) */
select count(*) from movie_info,movie_keyword,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>2 and movie_keyword.keyword_id<10292 and title.episode_nr<22 and title.series_years>0;

/*+ HashJoin(cast_info title)
 SeqScan(cast_info)
 SeqScan(title)
 Leading((cast_info title)) */
select count(*) from cast_info,title where title.id=cast_info.movie_id and cast_info.role_id>1 and title.production_year>117 and title.imdb_index>0 and title.kind_id=3;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and title.phonetic_code>2592 and title.season_nr=0 and title.kind_id>4;

/*+ HashJoin(cast_info movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_info_idx,cast_info,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_info_idx.info_type_id=99 and movie_keyword.keyword_id<29329 and movie_companies.company_type_id>1 and title.imdb_index=0;

/*+ HashJoin(cast_info movie_info movie_companies title)
 HashJoin(movie_info movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_companies title)))) */
select count(*) from movie_companies,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and cast_info.role_id=3 and movie_info.info_type_id<16 and title.season_nr>0;

/*+ HashJoin(cast_info movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_companies movie_keyword title movie_info_idx)
 HashJoin(movie_keyword title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_companies (movie_keyword (title movie_info_idx))))) */
select count(*) from movie_info_idx,movie_companies,cast_info,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and movie_companies.company_type_id=2 and title.episode_nr<23 and title.production_year>0;

/*+ HashJoin(movie_info movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info (movie_info_idx (title movie_keyword)))) */
select count(*) from movie_keyword,movie_info,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id>1 and movie_info_idx.info_type_id=101 and title.production_year>113 and title.season_nr=0;

/*+ HashJoin(cast_info title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (title movie_companies))) */
select count(*) from cast_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id<2 and title.episode_nr<1 and title.phonetic_code<6444 and title.season_nr>2;

/*+ HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((movie_info (title movie_keyword))) */
select count(*) from movie_info,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id<94 and title.kind_id<7 and title.phonetic_code>0 and title.imdb_index=0;

/*+ HashJoin(cast_info movie_info title movie_info_idx)
 HashJoin(movie_info title movie_info_idx)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(title)
 SeqScan(movie_info_idx)
 Leading((cast_info (movie_info (title movie_info_idx)))) */
select count(*) from movie_info,cast_info,movie_info_idx,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<18 and cast_info.role_id=1 and title.production_year>88 and title.phonetic_code>0;

/*+ HashJoin(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 Leading((title movie_info_idx)) */
select count(*) from movie_info_idx,title where title.id=movie_info_idx.movie_id and title.episode_nr<6277 and title.season_nr=0 and title.production_year<127 and title.series_years<826;

/*+ HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 Leading((movie_keyword title)) */
select count(*) from movie_keyword,title where title.id=movie_keyword.movie_id and title.phonetic_code>0 and title.episode_nr<51 and title.production_year>31 and title.series_years>0;

/*+ HashJoin(cast_info movie_info movie_info_idx title)
 HashJoin(movie_info movie_info_idx title)
 HashJoin(movie_info_idx title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx title)))) */
select count(*) from movie_info_idx,movie_info,cast_info,title where title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.series_years<1390 and title.phonetic_code<17826 and title.episode_nr>0 and title.production_year<124;

/*+ NestLoop(movie_info_idx title movie_keyword movie_info)
 NestLoop(movie_info_idx title movie_keyword)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_keyword) movie_info)) */
select count(*) from movie_info,movie_info_idx,movie_keyword,title where title.id=movie_info.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.series_years>0 and title.imdb_index>0 and title.phonetic_code>0 and title.kind_id>1;

/*+ HashJoin(cast_info movie_info_idx title movie_companies)
 HashJoin(movie_info_idx title movie_companies)
 NestLoop(title movie_companies)
 SeqScan(cast_info)
 SeqScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info_idx (title movie_companies)))) */
select count(*) from cast_info,movie_companies,movie_info_idx,title where title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id<2 and movie_info_idx.info_type_id<101 and title.phonetic_code<10276 and title.imdb_index>0;

/*+ HashJoin(movie_companies movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (movie_info_idx (title movie_keyword)))) */
select count(*) from movie_info_idx,movie_keyword,movie_companies,title where title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and movie_companies.company_type_id=1 and title.series_years>0 and title.imdb_index=0 and title.phonetic_code<6426;

/*+ HashJoin(cast_info movie_info title movie_keyword movie_companies)
 HashJoin(movie_info title movie_keyword movie_companies)
 NestLoop(title movie_keyword movie_companies)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 IndexScan(movie_companies)
 Leading((cast_info (movie_info ((title movie_keyword) movie_companies)))) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<94 and movie_companies.company_type_id=2 and title.phonetic_code>679 and title.series_years>0;

/*+ HashJoin(cast_info movie_companies movie_info title movie_keyword)
 HashJoin(movie_companies movie_info title movie_keyword)
 MergeJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (movie_companies (movie_info (title movie_keyword))))) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>2 and cast_info.nr_order>0 and movie_keyword.keyword_id>905 and title.season_nr>0;

/*+ NestLoop(title movie_companies movie_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.series_years>0 and title.imdb_index=0 and title.kind_id<7 and title.episode_nr<7293;

/*+ HashJoin(cast_info movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info movie_info_idx movie_companies title)
 HashJoin(movie_info_idx movie_companies title)
 HashJoin(movie_companies title)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(title)
 Leading((cast_info (movie_info (movie_info_idx (movie_companies title))))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id<101 and cast_info.role_id=10 and movie_info.info_type_id<16 and title.season_nr>1;

/*+ HashJoin(movie_companies movie_info_idx title movie_keyword)
 HashJoin(movie_info_idx title movie_keyword)
 NestLoop(title movie_keyword)
 SeqScan(movie_companies)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_keyword)
 Leading((movie_companies (movie_info_idx (title movie_keyword)))) */
select count(*) from movie_info_idx,movie_companies,movie_keyword,title where title.id=movie_info_idx.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id<2 and title.series_years>0 and title.production_year>16 and title.phonetic_code<15908;

/*+ HashJoin(cast_info title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies movie_info)
 HashJoin(title movie_info_idx movie_companies)
 HashJoin(title movie_info_idx)
 SeqScan(cast_info)
 IndexScan(title)
 SeqScan(movie_info_idx)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading((cast_info (((title movie_info_idx) movie_companies) movie_info))) */
select count(*) from movie_companies,movie_info_idx,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_info_idx.info_type_id=99 and cast_info.nr_order>1 and movie_info.info_type_id>2 and title.imdb_index=0;

/*+ NestLoop(movie_info_idx title movie_companies movie_info)
 NestLoop(movie_info_idx title movie_companies)
 MergeJoin(movie_info_idx title)
 IndexScan(movie_info_idx)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_info_idx title) movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,movie_info_idx,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and title.production_year>46 and title.phonetic_code<5253 and title.imdb_index=0;

