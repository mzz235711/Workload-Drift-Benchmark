/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND b.Date>='2010-08-26 01:36:10'::timestamp AND b.Date<='2014-07-31 20:16:41'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=0;

