/*+ HashJoin(u p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((u (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.PostId = p.Id AND v.UserId = u.Id AND v.BountyAmount>=0 AND v.BountyAmount<=150 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND p.AnswerCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=2;

