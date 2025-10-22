/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.UserId = u.Id AND u.Id = p.OwnerUserId AND p.PostTypeId=1 AND p.ViewCount<=4294 AND p.AnswerCount=2 AND p.CommentCount>=0 AND p.CommentCount<=13 AND u.Reputation<=377 AND u.Views>=0 AND u.UpVotes=1 AND u.CreationDate<='2014-09-10 10:03:33'::timestamp;

