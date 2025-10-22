/*+ HashJoin(u c v p)
 HashJoin(c v p)
 HashJoin(v p)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 Leading((u (c (v p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=1 AND c.CreationDate<='2014-09-11 01:57:32'::timestamp AND p.PostTypeId=2 AND p.Score<=18 AND p.CreationDate>='2010-07-19 19:27:13'::timestamp AND p.CreationDate<='2014-08-25 07:03:56'::timestamp AND v.VoteTypeId=2 AND v.CreationDate>='2010-08-03 00:00:00'::timestamp AND u.Reputation>=1 AND u.CreationDate<='2014-08-02 11:57:47'::timestamp;

