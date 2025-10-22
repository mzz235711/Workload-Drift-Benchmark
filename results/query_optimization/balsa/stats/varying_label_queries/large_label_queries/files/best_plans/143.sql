/*+ HashJoin(v p u c)
 HashJoin(v p u)
 HashJoin(v p)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(c)
 Leading((((v p) u) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate<='2014-09-12 15:47:12'::timestamp AND p.CommentCount>=0 AND p.CommentCount<=16 AND p.CreationDate>='2010-07-28 18:17:46'::timestamp AND v.CreationDate<='2014-09-10 00:00:00'::timestamp AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0 AND u.UpVotes<=95;

