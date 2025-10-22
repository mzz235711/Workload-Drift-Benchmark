/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 IndexScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate>='2010-07-19 20:02:25'::timestamp AND p.PostTypeId=1 AND p.Score>=-4 AND p.CommentCount>=0 AND v.CreationDate<='2014-09-12 00:00:00'::timestamp AND u.Views>=0 AND u.Views<=57 AND u.DownVotes<=0;

