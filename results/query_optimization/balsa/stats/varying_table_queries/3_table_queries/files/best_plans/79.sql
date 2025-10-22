/*+ HashJoin(c p u)
 MergeJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-08-09 07:24:50'::timestamp AND c.CreationDate<='2014-08-20 21:15:11'::timestamp AND p.ViewCount<=2218 AND p.CommentCount>=0 AND u.UpVotes>=0;

