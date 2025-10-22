/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.Score<=25 AND p.CommentCount<=14 AND p.CreationDate>='2010-07-19 22:37:38'::timestamp AND u.Reputation>=1 AND u.Reputation<=950 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.CreationDate>='2010-11-03 14:47:03'::timestamp;

