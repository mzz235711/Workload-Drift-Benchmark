/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-23 00:00:00'::timestamp AND b.Date>='2010-07-31 19:29:43'::timestamp AND b.Date<='2014-09-09 07:25:40'::timestamp AND u.Reputation<=357 AND u.UpVotes>=0 AND u.UpVotes<=78;

