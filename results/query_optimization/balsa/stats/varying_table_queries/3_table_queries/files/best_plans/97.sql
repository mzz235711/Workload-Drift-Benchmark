/*+ HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((u (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount<=100 AND p.PostTypeId=1 AND p.ViewCount<=2156 AND p.AnswerCount<=4 AND u.Reputation>=1 AND u.Reputation<=153 AND u.CreationDate>='2011-06-16 07:07:36'::timestamp;

