/*+ HashJoin(c u p v b)
 HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 IndexScan(p)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c u) p) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=350 AND u.CreationDate>='2010-07-19 19:09:41'::timestamp;

