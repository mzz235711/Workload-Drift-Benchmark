/*+ HashJoin(b c u p v)
 HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(b)
 SeqScan(c)
 SeqScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (((c u) p) v))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.ViewCount<=1452 AND v.CreationDate='2012-01-18 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=328 AND u.Views<=25 AND u.UpVotes<=5;

