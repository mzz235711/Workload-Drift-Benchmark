/*+ HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 SeqScan(v)
 Leading(((c (p u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.AnswerCount>=0 AND p.CreationDate>='2010-07-19 23:21:05'::timestamp AND v.CreationDate>='2009-04-13 00:00:00'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=20 AND u.CreationDate>='2010-07-27 09:24:00'::timestamp;

