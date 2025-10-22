/*+ HashJoin(b v u)
 HashJoin(v u)
 SeqScan(b)
 SeqScan(v)
 SeqScan(u)
 Leading((b (v u))) */
SELECT COUNT(*) FROM votes as v, badges as b, users as u WHERE u.Id = v.UserId AND v.UserId = b.UserId AND u.UpVotes>=0 AND u.UpVotes<=34 AND u.CreationDate<='2014-09-07 04:46:06'::timestamp;

