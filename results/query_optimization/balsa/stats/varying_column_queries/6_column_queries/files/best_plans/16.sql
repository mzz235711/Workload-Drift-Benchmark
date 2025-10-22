/*+ HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND p.Score>=0 AND p.ViewCount<=3773 AND p.AnswerCount<=4 AND p.CommentCount>=0 AND p.CommentCount<=31 AND u.CreationDate<='2014-09-11 18:52:35'::timestamp;

