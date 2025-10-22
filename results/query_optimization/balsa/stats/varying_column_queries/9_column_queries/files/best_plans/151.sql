/*+ MergeJoin(v ph p c u)
 HashJoin(ph p c u)
 HashJoin(p c u)
 HashJoin(c u)
 IndexScan(v)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(c)
 SeqScan(u)
 Leading((v (ph (p (c u))))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND c.CreationDate>='2010-07-29 04:15:57'::timestamp AND c.CreationDate<='2014-09-08 21:45:15'::timestamp AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=9 AND p.CreationDate<='2014-09-09 04:50:10'::timestamp AND ph.CreationDate<='2014-07-06 15:09:55'::timestamp AND u.DownVotes<=3 AND u.CreationDate>='2010-10-27 14:39:11'::timestamp;

