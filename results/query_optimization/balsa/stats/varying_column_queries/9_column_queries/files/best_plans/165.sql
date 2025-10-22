/*+ HashJoin(c v u p)
 HashJoin(v u p)
 HashJoin(u p)
 SeqScan(c)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((c (v (u p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=2210 AND p.AnswerCount=0 AND v.CreationDate>='2010-07-20 00:00:00'::timestamp AND u.Reputation>=1 AND u.Reputation<=798 AND u.CreationDate<='2014-07-26 13:31:19'::timestamp;

