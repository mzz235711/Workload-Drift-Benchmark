/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND p.PostTypeId=1 AND p.Score>=-1 AND p.AnswerCount>=0 AND p.CreationDate<='2014-09-05 04:28:26'::timestamp AND v.BountyAmount>=0 AND u.Reputation<=1460;

