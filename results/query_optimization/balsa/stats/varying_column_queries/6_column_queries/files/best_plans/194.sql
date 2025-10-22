/*+ HashJoin(c u p v)
 HashJoin(c u p)
 HashJoin(u p)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((c (u p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-24 00:40:50'::timestamp AND c.CreationDate<='2014-09-08 05:54:00'::timestamp AND p.ViewCount>=0 AND p.AnswerCount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.DownVotes<=0;

