/*+ HashJoin(c p u ph v)
 HashJoin(c p u ph)
 HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(ph)
 SeqScan(v)
 Leading(((((c p) u) ph) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.AnswerCount>=0 AND ph.PostHistoryTypeId=24 AND ph.CreationDate>='2010-09-17 08:44:09'::timestamp AND v.BountyAmount>=0 AND v.BountyAmount<=100 AND u.Reputation>=1 AND u.CreationDate<='2014-09-11 16:01:06'::timestamp;

