/*+ HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=0 AND p.PostTypeId=2 AND p.Score>=-1 AND p.CommentCount<=15 AND p.CreationDate>='2010-08-11 22:10:15'::timestamp AND p.CreationDate<='2014-09-08 10:31:11'::timestamp AND u.Views<=28 AND u.DownVotes=0;

