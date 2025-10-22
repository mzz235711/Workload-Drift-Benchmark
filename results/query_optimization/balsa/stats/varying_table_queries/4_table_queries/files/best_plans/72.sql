/*+ HashJoin(c u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((c (u (p v)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.ViewCount<=4934 AND p.AnswerCount<=4 AND p.CreationDate>='2010-09-04 11:15:48'::timestamp AND p.CreationDate<='2014-09-04 01:36:19'::timestamp AND v.BountyAmount<=100 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-12-24 13:10:01'::timestamp;

