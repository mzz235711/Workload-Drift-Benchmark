/*+ HashJoin(b v u)
 MergeJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND v.CreationDate='2011-02-21 00:00:00'::timestamp AND u.Reputation>=1;

