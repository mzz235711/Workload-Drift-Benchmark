/*+ HashJoin(u c v p)
 HashJoin(c v p)
 HashJoin(v p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 Leading((u (c (v p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-27 15:10:34'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.ViewCount<=5422 AND p.AnswerCount<=4 AND p.CreationDate>='2010-08-16 15:29:24'::timestamp AND v.VoteTypeId=2 AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.DownVotes<=0 AND u.CreationDate>='2011-01-14 15:14:20'::timestamp AND u.CreationDate<='2014-09-05 14:41:36'::timestamp;

