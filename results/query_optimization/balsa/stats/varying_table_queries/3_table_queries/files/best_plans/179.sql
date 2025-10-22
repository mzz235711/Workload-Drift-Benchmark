/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 IndexScan(v)
 IndexScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate>='2010-07-27 00:00:00'::timestamp AND u.Reputation<=407 AND u.Views<=51 AND u.UpVotes>=0 AND u.UpVotes<=9 AND u.CreationDate>='2010-08-16 21:57:12'::timestamp;

