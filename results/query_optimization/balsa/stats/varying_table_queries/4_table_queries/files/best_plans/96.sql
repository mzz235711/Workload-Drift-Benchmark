/*+ HashJoin(v u c p)
 HashJoin(u c p)
 HashJoin(c p)
 SeqScan(v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(p)
 Leading((v (u (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND p.Score<=121 AND p.AnswerCount<=3 AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-08 00:00:00'::timestamp AND u.Reputation>=1 AND u.DownVotes>=0 AND u.UpVotes<=360 AND u.CreationDate>='2010-10-10 05:22:36'::timestamp;

