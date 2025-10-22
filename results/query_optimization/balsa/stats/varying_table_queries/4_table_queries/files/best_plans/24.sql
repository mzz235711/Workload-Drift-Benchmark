/*+ HashJoin(c u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((c (u (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.AnswerCount<=4 AND p.CreationDate>='2010-08-25 08:22:06'::timestamp AND p.CreationDate<='2014-08-19 18:02:42'::timestamp AND v.CreationDate='2014-07-24 00:00:00'::timestamp;

