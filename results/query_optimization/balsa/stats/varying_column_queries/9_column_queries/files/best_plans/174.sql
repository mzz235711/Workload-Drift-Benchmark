/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 IndexScan(p)
 SeqScan(u)
 IndexScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND c.CreationDate<='2014-08-26 19:32:42'::timestamp AND p.ViewCount<=9750 AND p.AnswerCount<=15 AND p.CreationDate>='2009-04-12 07:24:17'::timestamp AND p.CreationDate<='2014-09-10 20:52:30'::timestamp AND u.Reputation>=1 AND u.Reputation<=4957 AND u.DownVotes>=0;

