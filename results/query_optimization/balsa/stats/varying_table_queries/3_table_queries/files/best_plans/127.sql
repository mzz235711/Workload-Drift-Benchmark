/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND b.Date<='2014-09-08 22:31:36'::timestamp AND u.Reputation>=1 AND u.Reputation<=238 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=37;

